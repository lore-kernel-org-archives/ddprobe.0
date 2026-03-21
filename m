Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11958221FBD
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774114494; cv=none; b=lebeM+mN77yHnXVLLDnFFvpHkoE8rJsku8BroYEtjg4tVrxdCkssUy03kSdXGgdHlVQYCAsXD+yyo7mf0/i8hTsh8Obn/0xUYst9H9Lue/7J6KulSBU80P7856hu+phftYvlf6yZ5rb43Oxzah0sJT47g9PBfWb/U2oFOrObBDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774114494; c=relaxed/simple;
	bh=+pMxxCiu0UyQVYj5HUdpZTiOWSKDiFekRjuHwFNse8E=;
	h=To:Subject:From:Message-Id:Date; b=tDwzzv6aBhkOJCisjtxyE7k5F+nJh790hzxtMa5yiQK64FiG+xmwLSPV9p7fPFxP6SHUXxkZZr0S2Si7dx8wEFkUqyD72xUdvLlWOj+APLJlBUUCoFUFEbiPHzCuOsqynv0AFUktfDGunJooN77bXXocN8RN3cLS6Gl01S3G88Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PIwdKdla; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PIwdKdla"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84E4C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774114493;
	bh=+pMxxCiu0UyQVYj5HUdpZTiOWSKDiFekRjuHwFNse8E=;
	h=To:Subject:From:Date:From;
	b=PIwdKdlaN9fQp6ub3v6GZZruEBpMkIcQjv9tl7Vqcy1rWHJyKomT0T1Oqk6GTpK0F
	 k6Wu0s1oJB6Pwg9+cvhTaeh1VyJ8bQ6lhPcvklkWwQkkX90SovGzsh56TtWFNc0UtD
	 UOmq7RBNXUMFfp7U2II8PqiT2vfQedlPHVl5YfFUk4VFsKUZzU0l4a4vJgRx/o0oFf
	 o9h5UEIy4ff9tNu5eaiUgBAHgsPBUFOMmrGDF+cUn6xSriUhg2XaOnocBMbmYJfIZm
	 0LCtjT4k2H5HcwpNNkHy/85beYqTg2ogufLqLSGp7ewQ9M1pyfdffAlDALGzD4JvD4
	 pWiNV1oY+pmrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941F6109448A
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177411449357.30492.14572160092681702882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0b60cb4a4bee82e4a20fcb3f18a9cc53d409b95401bff078115863379bf7891
Date: Sat, 21 Mar 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774114493
