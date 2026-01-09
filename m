Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A33B366DB5
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767989634; cv=none; b=SU3yh0XVQZ2MsAdQzMLrYyQWQDi+iOWlKB92CcfH2DQvfsVDa5O4h/WW07WXRKx5lzxSL33y8+aU/svZLexy3KB66eHMfYiBJA7XyflcEbVd+u9YQDhm1y7eL+XyrWvLLZ2q2SSDc0s0vX2uwCIMaiJ/EIfNggS1V0Nr4+aYDao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767989634; c=relaxed/simple;
	bh=rkd4kq70C4Moqi5VmX09Or5EoB8GSjGpY9fDrkSps7U=;
	h=To:Subject:From:Message-Id:Date; b=STRImlCD8xgWDeOAp6gDAsAMqkerV7B9feRNFEZsP6z1sgAMPRCxXHbq6k1hrSQ3OVYmg7CbQo6E7T54bfo3OnXuCM3foDEo9EDzROA3q7q+cm80aRkJCQB1krHY+zxSH3dHC55+TEPyhgzrIEpA7/eIzK22uN9EJZ6qcVc3DTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pl7g6K1+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pl7g6K1+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75C7C19423
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767989633;
	bh=rkd4kq70C4Moqi5VmX09Or5EoB8GSjGpY9fDrkSps7U=;
	h=To:Subject:From:Date:From;
	b=Pl7g6K1+lhFQ5I2AGXH+8Y0ZdSxG2vkIEq4wlQLCf8vKklbb53EOuwjpu5rYgJfCL
	 Akm5inIzzP0bkbtOOa9t8+zGKTULp+E1itOEVps+z7eGb/gURK8SfAueDS97jq507/
	 6yOFtuLDn2KJQ01rUljbWDHz9SOVhexUAv1B+IeNd/0I98vdNg4pvDvIGNnthC8bGe
	 dpfTBAwHGstE+AInj58B4COv8+t3luSQ3yCdoAg00OKG2xQFokB8cngcilLskxfN8Z
	 3LVuiU2H/D9kHQwHmcUTbWhdVIgLnZT2HiuhNXNK4pvayUZqZOo3iLCaY60Tb+Tj9v
	 oBXaxeO1EYWZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B4DD26D99
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176798963358.12425.17457217120721917629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3703953383cb117687e36e344f2e3fad214304ae045bf1e5894d504722d748e4
Date: Fri, 09 Jan 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767989633
