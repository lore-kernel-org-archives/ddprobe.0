Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9452EC0AD
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771161894; cv=none; b=lPydmx+AmVu7n9XuXXytkCUIaznzjuhgHBUc/EFuOuTtgGOHk3KDcd1p1I8w6uU4+GkDwotGoXA2Go+PqLFjxuRHVmwglz5l166fXiUvuASMhoVlzJX/l6k/WSvqPk/Detk5AZ4RTvWV4ZPxg0ECBVQzqPy87ntv8+TD8ChFgy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771161894; c=relaxed/simple;
	bh=vK4Fe6V2OH4bBi4/fqqjKM1jMLvl4ot6K3TB6P5c05w=;
	h=To:Subject:From:Message-Id:Date; b=gADWeB5w/EWE3BHwbJBDuSyfJ31OCIjvEMi5U7u6q5APATpkarEp0ksFhyc9jr1aq7d+y8rtx+irLkH8ioU0y4QDWkwQMhVkurTXMyVE7C8M6ZBShWcei60JMA0F0LqTbk/taAD/DBQOWNCfWbOmf0e6/R3n/VQIOXrtTx+vSpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XAv0mFCT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XAv0mFCT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B35EBC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771161893;
	bh=vK4Fe6V2OH4bBi4/fqqjKM1jMLvl4ot6K3TB6P5c05w=;
	h=To:Subject:From:Date:From;
	b=XAv0mFCTEh04RMDbTz/IoI94R7cyKRbttOU5IV7X6vzNHEHdXqRIpqYM/npNKEOC/
	 GTh3gznXfLlo4YQNeqxZOiyO835nM4smvd31udbWd1ZQu2j0dM8H418txVxi9GOYBm
	 c1iY2ibngDxALymDCja5g6YQdM/J25wtcSkDBQKFUIwlDOLNCExQL/dShs//tiYxYk
	 EGnRrh4aga+i1Nk0aaUqeJ1r3IHkYj9R0niDnCSCbeYv+c72xe2CoV5i1FcBdQpgaJ
	 jUx8zOm+URnCusMBa02r1NfoyrJZodEu9qHrdmXEr/rE+CP8dVHVMzdBwBY9EcLGt5
	 V/wHna/JwaJpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD38EF584C
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177116189359.32244.14427415680243916438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bef622b37a1ceae4b9914279a9a2ea23bf48280c73ccdcf97b1a638fbdd9a6e
Date: Sun, 15 Feb 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771161893
