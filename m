Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E1A3D6F
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751219994; cv=none; b=KKE3aeN8xfXeEC0Pz/utW+cIoWnaG9PgnzoE8PHD5VlWxp2vWJr/69Tgf9/XgfH/xg+y5TE+WVVYNxccGxWW7k9H22plQwiZ98HxQ5AxnBl+DxvTxho0JV21iREtE1RqfPSCzMgAUrG5aNFmLa6bCKWZ1Qto/1HOs4L8eSYeSvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751219994; c=relaxed/simple;
	bh=oa+PJ11ypJZCneLwaBir9dyVoW5Egx/nj+77PLjauYs=;
	h=To:Subject:From:Message-Id:Date; b=fz39Xr0avIrZL5MDmyZk9BBRwXxF+x6PLXcXVlZzx8XkYqBh0oXImVjF404X5dPhtBfanRxvJX39mkh7OlTcu/eP/UjsVaxLyWkl3WwJZx60LsKkuDYMn5E+4E5dzO8uXz2ttEB6Regtnco5Smu0TwqZt3agAf+/KVk2UCIjv10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DMdYCCJV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DMdYCCJV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA418C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751219993;
	bh=oa+PJ11ypJZCneLwaBir9dyVoW5Egx/nj+77PLjauYs=;
	h=To:Subject:From:Date:From;
	b=DMdYCCJVJi7zJ5813SMUs1//ErawpobkjFIsYHA25ta5wFGdcqgebmZGpPLWYOJDb
	 wVCebCxs4hlz1FDVayWtBX7m1/YU3NQ8H/OVi4UxbqmH6Yqmlxa6ysulOhXZYcG3BU
	 B9LmMfOEilqy+fer2QHZL0lTU/4fBjieKSWEpHdZ/cB9FY9H1sPtAwodm38jsNIsar
	 px7LrP0mmXLHp9R74PdarHV4IEQ0HMhszKYL0eAre+tERPjxlnN+0PV/CRzI0Rh74a
	 5WIofpLdggBDu+T34IjNz7f0031a3wYNtvPiEZq4oHIi8imBuym/JWpkYBAdksyWAv
	 12uFrwt9jnBYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BBAC7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175121999358.1654.7033277500278863736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdaff7f1b32439f165be5de4749b3622979a669b59a35176dbe6403420f45b69
Date: Sun, 29 Jun 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751219993
