Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BEB82AD2D
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750996194; cv=none; b=iKC15B52SXPbtHB9a4jxi44MTP5UZUVmXi4pSk6zLpCqhQRbjIVsunw0DDimrCr1X2u9AXiX9Fw3Jd86BkINz6zmIU3o0moA9wkJweYHqMOTXkJHtYP3TA9j31R4jmPXKzGtC0DxiFKF9E7E1U6FEWDT481zpdNYlCvV0d2PxR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750996194; c=relaxed/simple;
	bh=tX8jEuhc5Mj1icOcVTgYefMP0b8zNXqTveMZqFOcdbY=;
	h=To:Subject:From:Message-Id:Date; b=H0FFV3SP3Y/8vM1aE3L3OXe3XD4cUTf0yS7lQ0wrbBzAFTUtwu1HyIFuIBL+ZeyK/HGRmvlbKvxxKavF+LTbCfZrS0H3aOLm1raz8cpvZK/Jy8pw9vej6j9FdFQKelBfuJKlwqGpBaTFxC4yZTRnNNygJ3BY5MUOrF+VITLryDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4qeMdfC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4qeMdfC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9DCC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750996193;
	bh=tX8jEuhc5Mj1icOcVTgYefMP0b8zNXqTveMZqFOcdbY=;
	h=To:Subject:From:Date:From;
	b=E4qeMdfC4sthIb6vSkiEoal06PAWkNYNXghR5IZ6PyqjV4uszDExpb+HCngIEyvOI
	 OJeb2as398VZTha7aPXrH0RIRnDLlAwtyO7l1HBq04wQqKjiQT4lyfeRO9dTdJJmMF
	 DakiDtkqYVwf0JCTtNEamie+HVN+P8i3IymJKEJYKWnab9i+rjOLwL36MO12t1qdds
	 t5lvuYOm/+NYB3PT0iS1P15k3MtGMd8d/V/e0GfiCGG+oAogJpBV6vRK9WjUU2huT3
	 8lxcE5dMeMqq+4gYAYs25FtRrWfRqyjY6t6hDto6KM5rdpAcmqYIZgJSnD2ne9fxJE
	 YgWG+Xzg/0zmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9332AC7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175099619358.26817.5144578203211650570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78179eaa9e070f314f8fb5589d7f35822fd6a5a3135afd1c4c3a2b09b1a916af
Date: Fri, 27 Jun 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750996193
