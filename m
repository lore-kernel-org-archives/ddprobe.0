Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF232EB1D
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743590395; cv=none; b=C/OobKMLytV1f0KsUEuLJ4gbANsalWvANFd1YlUS501X6eGyti+S9aJUU0whteXhTXP/MTOrfaX1V/Q0HrjmVt991jWKIfy152G74Y7FWXV9gCcCzJweIVrc6cIqBArpjhFPBmBs6rlMnXdKXIYH78k3JYMT5WfoqBXD+bc6iRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743590395; c=relaxed/simple;
	bh=dFJf7KwCtA7QKrrKIYlF1gk/A+55zsGRAotWuF9XYbk=;
	h=To:Subject:From:Message-Id:Date; b=ALEjId/JkDcP9yjzXaLYeP0jAJIvOmqqvjqUOdk2htlg4uc2tKsRDEjQA7tE5C/jQ988TQKLG8JYyhFeZEd6dJ1zLapBCHBVFfeW9akY6DpqAEuHHtwgKj16Lw2ceZzg4O71USHMo61Bz88IrI0bfLZkH3ETEuRu8znPjPjoc58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PkL0a8+8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PkL0a8+8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0CFAC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743590393;
	bh=dFJf7KwCtA7QKrrKIYlF1gk/A+55zsGRAotWuF9XYbk=;
	h=To:Subject:From:Date:From;
	b=PkL0a8+8GZ2iaNB1TW2AYOST0B4OHSu6ySLElfM/qr+6fuJTIucKCMHgbB4S6WNq1
	 5bhZEBpIKBz5lCk1qnONI4ISXzbV5nZfCrRy1fzSL7NYeSvpsPQ9VqpfbCq0nwcAf6
	 Nz6OSFsdS2c0AqQ96wJVGtdwtD2ypasnUd3s7DsvFNC5IrNjweWTZCoxvyI7MKjSa2
	 BUQjyX9zYkC+4hBXnZPBsEe6EHM2/27YjyPKcId1GB6CTmHxdB/pwjziAOfh7Qrs/3
	 5psuVLP0Y5mxD5UAdfIldhaL9H2f8G6tD6i6qqffKsUYAN1xwu9HVMYiYWqabIueOJ
	 JiHwgu/Qd4uIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB53C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174359039362.18010.17784836694793995420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f20ebc7465bbc0f5540792e3506d6c701cfe02e25643c20d55b85130925fce79
Date: Wed, 02 Apr 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743590393
