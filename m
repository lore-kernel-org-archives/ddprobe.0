Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2951C37DE8C
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 16:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776874654; cv=none; b=epvokFLbQZN2yZ8NPE+nN22Jy4KWXO+jXoObww6A5d6aXr8BnVyqr6sOercMRi367RLFV0026ndmiGlNYmuYR6UvhK91Poiyo0JjZiRj3zl2aqLH9H11BSxDVweSL2azV4zx2Irrw3S9qSTLRFFzv+HarZ2wlvOsb3dQ9Ec0tUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776874654; c=relaxed/simple;
	bh=VYwt40hPZKiDZd65wZyNVDW35NxZIVOIINYTXQ1XY98=;
	h=To:Subject:From:Message-Id:Date; b=lW5zk/67v2wRPrOAbPDWIPFJlhG6wkxj5JRK0hlyW2tzn51yRRu2rUlDVuCGKxAJpzpJgmbqkxFsaA+7Pb25QO72YSQrOIuK2R/sA2Apd8p/ORMlgKeTztd91o9c47Sb5YopX94/8ibK4QaldKiy6zRMI7xIeloN74vUlhQPxqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLo+PBa1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLo+PBa1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2FF6C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776874653;
	bh=VYwt40hPZKiDZd65wZyNVDW35NxZIVOIINYTXQ1XY98=;
	h=To:Subject:From:Date:From;
	b=SLo+PBa1tGNIuCjeJV6DrasGTobbMz3XZko30hOiY9LwaZvcGJ30aY4WEGNspnetz
	 37QVVIPxyIrUs+BtHd3DBwGedcG0OsW2hn7I+mcEBXAbXMbABDjZmtizdOKEcY3yUT
	 DrspXR+e5q8b3naYa+AOVtq4cX6EhAdyR3yytoysJ34vo7GrtOuJFSvlXjOLLnpUrk
	 5dFZDy9MAGMvAW1Im7EIZobpLCE3tbxUbGKsHXdAsl8smr0GspIOrGsT3wNmoWsHQt
	 LUV7cDtZ06ZVVA4ro2C3qlECy7UGz8fgY/IGf2SvS2INHTonOzZbX4vHhwTO7+pbBu
	 Na0mxozUsbmsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB372FA1FD1
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177687465369.12750.15169910457613029267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de6653bd082d04ad352793bca452c3645d89770c97c220ee5e20bcc8cd9ba777
Date: Wed, 22 Apr 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776874653
