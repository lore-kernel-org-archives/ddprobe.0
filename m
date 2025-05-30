Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3B9376F1
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748611194; cv=none; b=Quu3/OqbAD1eoOwRN/sA4g8YhnDH9O+1rfNwlZqHtBi+6rP4Ts3hEixfsQDoOKbEYIv2WPX4AJrTbspilPDuslfR7ylioKt2KTy88ckQ5QIfdyLAHRsL3bJOx/zn5jatjsGKSM3AobXykhEdSFLJG+V0k21Yk1WzG3xN1yL674I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748611194; c=relaxed/simple;
	bh=+h4Jn+R0Df/jpX/x35xyMRmpr7YmdQVUsBm4XAW7tK4=;
	h=To:Subject:From:Message-Id:Date; b=lEZFoaBZBdU2+rZe5WjfNBOlaMWU+Gcu5BybeV7hEIaeVeUrQsp6DJCQYN7J8UNAPasNIKaHOsN3LvCzA3yeCjNAzLISg7S8+wOVyVuQzcpTI9TA9iU64FA0He0UgYEGqeN2n1NWzTnAv8PL8nld2jrVRw502f9rSQ8ii8u5Tys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNdw8N46; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNdw8N46"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BC7C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748611193;
	bh=+h4Jn+R0Df/jpX/x35xyMRmpr7YmdQVUsBm4XAW7tK4=;
	h=To:Subject:From:Date:From;
	b=vNdw8N465AvRLiKCnQSm6aCScIIz0kS2B5/Xkm6WL5RrformDX0+Z8mn5DuijcJRQ
	 UQAoRO/sY4UE3Svu3mEDd8bhVqLqRNTb0kHuuAzOrNifXeYSIdrOWjNtdA1Pef90tV
	 YJVr2qtTZbw3ALyzHCrc0kxtBh1ASQAlfXkiz8CBwWSaLwLfB+cyJM+5O8aDVsA+QV
	 CjrkOsyb3y1ZqXpkR+y1JhnIyl3Fh3F1LpWEVlKit0QKkVvWj3LT/6NlQTXnKULh4Z
	 fUnWoW017j4ufUBSkVV/vUCdvxAZLWm0e7IO04PmgIpMaNn0gujACxWhM9TEFzkE19
	 8nIjstUheHE3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F63EC5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174861119357.27608.5884745973371427482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b6daa3e8614b9d9000c2ec6543e44fc452550991add39a42d4e5c5d7f8433ab
Date: Fri, 30 May 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748611193
