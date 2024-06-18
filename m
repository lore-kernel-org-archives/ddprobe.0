Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF8B1EB40
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 03:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718682563; cv=none; b=fxBGhE4VYk/taxfEbeuK44IZEpPoubr8RDGlq8imcbMKG2+jOqXFzKiSdoFMoZHAo5tV/K98Ae9UGjf3QhsFhcKBlIBihCZkRCliZXc45A3ml56ivyQ4LfUDkTg9d2qVnuv0gAemc6fHgv/23HPPTDAOxQYcO694k9ykB04Z624=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718682563; c=relaxed/simple;
	bh=Vw6hXytpJrzcrE+LhB1Hnb8F2O8p4iDJ2ww709Wu+GI=;
	h=To:Subject:From:Message-Id:Date; b=IxSXGG1ugDkOgLCZb2/FzAu47+vY8L5pM00b14wwXg3mmCR+kiopPuju6xUPvqtDVqu/ABsCIVz2QZb5di1ekRiNm2orMcIc8Y0KeiCO07BQbDevck4Vvniw2ieWqY7/CavWuU6ADfY+b0MoPduF00zLg2Imyex1z0WK0t0Xcow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CpnQ4dZe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CpnQ4dZe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1CD8C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 03:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718682562;
	bh=Vw6hXytpJrzcrE+LhB1Hnb8F2O8p4iDJ2ww709Wu+GI=;
	h=To:Subject:From:Date:From;
	b=CpnQ4dZe+a2oKgHaWo/cUM5HNg6HsdttKhNBgwPwYo1NqlUkoT+H3yJvOEIr20goo
	 pwEoYq1kIq3u1IDomgjm6erUXdRkphHONQrSpDNYs6Qm0i/+9ghKZUuWvBYzW3fqTG
	 HcQcDfNIBjD+VRXvFahzkuYVtl2LO6EXOBDckKvf7g9xPKv1KWqZUC4ZylDWmHmK8h
	 g3tydRUza0xuuLIBTppCpkintzBkJURkRAbHP9XT2CjHYZ7MG2xKwoa30AfEpYM6aT
	 mZoaYrx9ac8WNpeHxkOmq3BV+HXEZwEcikctBkeJKPvaZ4cD/4TvtltfXEKM40Nt5I
	 OYTJuMIeFF/ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD28BC27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 03:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171868256281.10764.14715683895210355599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c6feff75e37c8238a3848b5b737499d80548103d7f7fe3e0e36795252bf29d3
Date: Tue, 18 Jun 2024 03:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718682562
