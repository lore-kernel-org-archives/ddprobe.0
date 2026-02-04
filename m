Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE583ACEFA
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770227634; cv=none; b=isUwDlxH/fQIMZjMGkaToES+cUOjaGJ43zXKRTsgOfMZ9YWapGIFU8UH88kheGaG91e5Ih9SS7AYa0XQK+22WlCARfFzX9/IbmG8SEDB7mUlg4+T/2//mlp5az8m+nowKnelFsbowa2giu6CLtdEGknuMF9abiE2kqJnQQOdl0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770227634; c=relaxed/simple;
	bh=aEc1AVHoT9iL4G3bE4WBkn7itAA4L0bP7eNSXaFqGZE=;
	h=To:Subject:From:Message-Id:Date; b=mndO4htC9+CzlsqEv0cROrqrFSiLlJYRsVng2KClEdF715TfeDn7Re40VNvFW6X12QAHuvoEDa7YemqhoaRCXQWm3co516O0yaNe0vyrw3GmBGttVniWDUFnaPaYnYeSCCjlPs+5Dd8R8f88vnLVrd642TbKK/ykOLy4pCv6NcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpNLproz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpNLproz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A6FC19424
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770227633;
	bh=aEc1AVHoT9iL4G3bE4WBkn7itAA4L0bP7eNSXaFqGZE=;
	h=To:Subject:From:Date:From;
	b=gpNLprozLGVA7AlWujoskX/l2xrzVzQI7A/6RWhtnoSp4qNGkw6GsEyJIUCbxHIsB
	 usTMLwwDQT3pEKT83C+KeHPoOkKn6NBFIsFk9RP3+MexCQvIVH8c/lFEbzSv9aKKu8
	 Y/5r+hxKYHE2bTW5rupH+LMFteUyvUjaVtLQjsoheuEo6pir+o5JBjdn0ucqFuzPpL
	 if1agjcUMyM/X+ukrkEL40fuKZxSpKbST9ZCcPxAzCxJhT2IYf3JPVf5rPDGA/mgWa
	 xf7DQUwjYEgSNMpjbbFPwizGJedsEwtgD1eVs051q/xoyKyRD4qxonX4Z9lsWNTfSf
	 TLLcLKOjMmUGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A382BE9D41E
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177022763365.18683.14683385574786456508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ef5dc2674e5cb6efee126261920cec60e53c55ed156fbdfd3a2ce7243c9f716
Date: Wed, 04 Feb 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770227633
