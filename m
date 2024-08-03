Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CE217995
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722707754; cv=none; b=IEL5KzqYiIxxLXdCq6S+LLxlumy3Ecl3FNqy3XhjuHo9xuwlvimGeECDjJmsSysWHxQSlQdEkSvSZ0HbM+HRx9ynDi4l3YEQe25d1/a0MoShCjW+3Gtam8huhZziInHLRCAH0087HiQ2SSlBEprax/jb7vwb7tLTOhM4lNvD36o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722707754; c=relaxed/simple;
	bh=FfweusscLAwFLyYR99XYo7m+mxrRUPwlu4MkTQW03CY=;
	h=To:Subject:From:Message-Id:Date; b=YuF0hmgQkMlPY8YVAGb1pZdL6sspBhOul3NjBCwdnbY6XuoqZ+oofiU2KL/XHc2MzuDc50si+ZjOrAWRzgv3tjiBvli0RPCmNEdIYWTmxz0DaUL+Pa22QakXpO4U8OY1MxWgvIMUKgIby19Bi3gj6NK/tVAljdfNWmFMC5SGE2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQnJdLki; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQnJdLki"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B881CC116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722707753;
	bh=FfweusscLAwFLyYR99XYo7m+mxrRUPwlu4MkTQW03CY=;
	h=To:Subject:From:Date:From;
	b=SQnJdLkibXZs2jpdfsyuMNwCHRLHubUfY8EIo6BVHAWsml1/flq2/wL0EzcgFazxp
	 zTAMOuT5quELM8FbLOMSslKEKvhyyt8n1BVXeDNC5K6gPHIxDs2+VJBoKQkY+WWaZ+
	 IhjzmUVF9/mkNJy4J10FiFinIIIGmiVL0xdhZeQmvMxlXFuiktl8LCxNwoaeIlFgQ/
	 g1M/akgKtf7QsmCh1BPrSgxpbMl2LSC8RGgwVEGXW+VHNsSKVGTqwFAk0kcMgntYMS
	 +6w3caUczrusJRYbimWPBIgdVo6z+fVgFb9Wze9Goxu2VN4yiYx8YyaijKpBJ7SZqX
	 oORtMi9/r2JFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FCCAC3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172270775360.26314.3743572589903809223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29eb378c4bf13b0de2c7d4f34eba7b440fd255dfcc9e1053b49482876b29e73b
Date: Sat, 03 Aug 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722707753
