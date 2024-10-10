Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4816918593B
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728529554; cv=none; b=RgitZQFUrfoYYnG9VHImss/XfmQJ83Z8VepnYhbLzlLueEICJ3utCfycdIHZxSJyH0uhEpV8TewcqnwpVX5PSwLM4mMgEcM0SRwEkvIXh/AZFqiqb7hI0QfAsdynVgqb8ffWIDsUcDtV+jAptnxoC5rImVkigEIBlYhjQiyG784=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728529554; c=relaxed/simple;
	bh=xxzvidof/PCmVf6sN91gUa3rhPZnG8ONxF2eHSBv2TY=;
	h=To:Subject:From:Message-Id:Date; b=gOrdr7dQpNQ4FXGCxzuKFLGEV4jFZTFylProB6Cbg7nwekPi50hniY79RDSzE6kkNlm/uDZLYXVVpTN2awzXtS3bO2Ine78Wi8XQd5d97KqHEvgvH40YE6/PTym2ZBOuCRVbZRRDo80IH2P/5a2THNBtPW43r8Y8xN/lvOZey3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HlZa+LlJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HlZa+LlJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E41C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728529553;
	bh=xxzvidof/PCmVf6sN91gUa3rhPZnG8ONxF2eHSBv2TY=;
	h=To:Subject:From:Date:From;
	b=HlZa+LlJ4EqZjBFXPWYK3AoReQ6jXsn3bztf0nS8nqBPJF1Lm+xF18hBE7L/iOCgp
	 hHA9mFDTK0f6libEYWJnoAN3DotnohqUhWxAUg3rRoyIz4iNcHCsjsgnpwdMWSYIB9
	 k20dv5NrZfFUgd4a4oUgJsj+X6cv/50P7mnj8D7pZWv+PyWVB+lKUZX4+VAZVwFajM
	 ie01+DVaywNJaglj1EnHRLx+iXO1awyFXDBJaZebMoD8LD6rNOSpDn+SUykCrCL7wI
	 /qfS16dwh5VyPCbkSgdnOzFLAb7lD47pwbu42+eg3GjsAwMu8Vy4vRXk0LlkF0iA3S
	 2GLp+MPSNAlOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5295CEDDB7
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172852955365.13293.4566986879596890874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1613bdfa7a67d9e54e1b679683c7688f38b6473640039b03c57e5c17587661fc
Date: Thu, 10 Oct 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728529553
