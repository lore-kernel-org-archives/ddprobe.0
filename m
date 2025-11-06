Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2374C3115B1
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762445994; cv=none; b=WJWlrv2i0TSZWWzgLB0MLVzqbo4VE1/3Se6DJdnU8shsli9MTVkWtPqfdvjl/AtfVEj2FPakoBhklIB/ibIAAZG9c+wtRR4WplUWpIOx9Figwvn99z96W1CeaNKW/Tw9ahEyObHamS0EiMunzy9fkpZbhvKbhrk28niSMfZlaww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762445994; c=relaxed/simple;
	bh=egT6DBVM2rSh/VEKUQMjSHFA11FMvNjaZmy016WtmxY=;
	h=To:Subject:From:Message-Id:Date; b=tUZrR5Oe4P2hth9RSG1lcVl8LMw8ROTEgbw7zA8EEid0aRD/SnB50IT5wMfNp4Hywu7xOH6SzFzCspKfcdkc009TXSkB6dEhuNYcvSFKdFzyGIN2TP+e9W8hLtUyRREyWOcsKF8t8O363BXo4UuX11FIEVXwdqr/T1KHz1PqikU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCgIGHKU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCgIGHKU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E05C116C6
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762445993;
	bh=egT6DBVM2rSh/VEKUQMjSHFA11FMvNjaZmy016WtmxY=;
	h=To:Subject:From:Date:From;
	b=NCgIGHKUfkg3rCppD1Fz4uJl3pr/s5FEfrxA3Ta0F7ffvGk9mIpiF5lvqWsknyUbs
	 lQAUGHASVuK3yxXTHuTsrhdFXVaY5lOmd1Lg6TBfCT2KWcs1D99ZBVze5f4iDiRbis
	 pcQExXxYA8JWR/n8RYrITbsQfmxyZYqTB8Bpq1axDvraOT3KbcEAHJibWbi/t0HFz7
	 T4+zl3c8ul/omiX+e/Jj/LMePhna26x6fl2V8ZdMo1d6+OzGRBieV2wPoYJlHmX2IM
	 0emHbUJrKwMH9BD62bu1PM5jbw3biUySIePpOjRA2ZXdMUrtSeLFzL4EZWD8txn6Hh
	 8e2upUZFZWgRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92829CCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176244599358.25053.7965158171014310380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86db8441f97b832678a985678566c5c904e67b5c7d153e77990c1303adbe9444
Date: Thu, 06 Nov 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762445993
