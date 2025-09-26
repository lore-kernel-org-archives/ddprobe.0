Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD1C18C02E
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758890394; cv=none; b=Zn2WG2Ill1uclqpiJ4xXVgM8VjVMDabJ5zI2DiXMauHA6ZvAd4S4QhGRjWzet95MooZWmEYq0otYv0FKfbk0oQfgtQqMCeJ65G4+nxaU/+h9GvkdcGzk378RmgfYiPBPjkw8V0wEreVlFsgJPR19HtxjLjw0pXBbnkqoB0KbJew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758890394; c=relaxed/simple;
	bh=JKMaCnzQVCTEHWAmIha/dVUyC16Yhkizv3Q8M+2b1wI=;
	h=To:Subject:From:Message-Id:Date; b=ieBIA5cNKPATqsPtnxuIx/fLjd93vsNe4LE+HovNVlWbHZ1xZDNIwUa6L6Jp0DO1mh6wXIWeUZjtwmOc3FiuhOZNm0wgY2Imd33QQO6s9anG6kEQSSKDxeoHAnPLflV6lP4zuXyxCrgxY8IBJZ/padUXfSxhcl2cMuYo98n73uA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZ8f1YYT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZ8f1YYT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A7DC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758890393;
	bh=JKMaCnzQVCTEHWAmIha/dVUyC16Yhkizv3Q8M+2b1wI=;
	h=To:Subject:From:Date:From;
	b=RZ8f1YYTwgzOpjSNAAWy26C8vIyOgtoGM7G0DeXnpGiPIoTCMDvtlGVshbgHLdWcD
	 Cz0LzGNvNLjwZgicabwiRXHQll9BKdUTnT5LUe1bnkulFIdmH/6k/pEqXEAt42o4mE
	 oyfkd1sxjOc2AkhBMWP9hs29F61FjE52flSotKFHykMyo5a/BD0cuKCJQVgIjvhuf5
	 GhfziPdwITjG3yXole6U/DZ31+nGPJpMG+CV6tK2DEeRt52hEn6UyeyEo1qc7sa/pt
	 zNULwvB7CQrhm4tnlaAO/2MsyMx8LvlARk8O3OEyF6keRSBCSRCoSM3+2m+8z1CLBC
	 8A28OuTsZvIhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952BACAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175889039360.4199.11945323806023025502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f773326d62fb0b622465aa590245f4f5bdba5d3dac66cedf6d21f2315295be5d
Date: Fri, 26 Sep 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758890393
