Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D95682417D3
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738886153; cv=none; b=WRZyHRaVMLHQgJJnLfe29F1d+R9nMJ1FY3O/D4qCYxq/QAmOmacGS8RqLNv14YNmuALPToUeVj6Wrq3WiD2yH9E6hT9jVzNKxcTZyD4wEUfZNVohAdYEBnw/cxPZxhU9JHxR2cjgvv6Ltk9nF4ZfnC0lNztbxgNOvO/VGdZMpks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738886153; c=relaxed/simple;
	bh=ntbghYRy/yVDDxz2MnNBhm7HPQIpa9X0Wg0IXW6FGAM=;
	h=To:Subject:From:Message-Id:Date; b=PBny/v+5tsqs0oIehQPDRbBWzrpUMDE45Qbek7v7dvMNq54awdlF2rImaTqW24shid+ThHq0aBjoTeA8o6JdWLkKB92m4ZLqrt923SOl0t99mmp/eS4zRx5dr78ESr3SR/+rwhGaMH+V7IlkATnR2Zwlvo/Ah9z/8TZ11+2+1kA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFKPDqtV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFKPDqtV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB96AC4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738886153;
	bh=ntbghYRy/yVDDxz2MnNBhm7HPQIpa9X0Wg0IXW6FGAM=;
	h=To:Subject:From:Date:From;
	b=aFKPDqtVE4/Yd9K2EcZYtUOxnl0R6o/ZGHC+ZR5w/FVNlIWXQrkhPM/8rFn0Z6DUZ
	 YayrBrYOpyhxPHxNuC+CkbXCFw6LH5nbvTMt/3Gt9uTDWz95ngiQEoKHO9vfN/5Z+A
	 OZ1cD0no9Dyli7zxs0t6Rz9LxADhd1cKusBbo944qFeDOTtF+oQEewv8MngytaMycV
	 CEVeNW7PEYJOvFzAOumzLOzs6afbFJtqOOcNkyWbVHiTGBLios4R4HVlOjEXFl5yX+
	 V/Zprih2mYg5Uy3CKh3lP1bXCd7shmIcOfoDS4dtghr4qHSr3KUazmNM8xE3I6sdV7
	 Ou0Vtpbn2D+Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FC6C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173888615359.25490.1783517588573438782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3385ae08d13829cdf5d56e9d36e584a725232129c7ffa0825fba5943e4aa715b
Date: Thu, 06 Feb 2025 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738886153
