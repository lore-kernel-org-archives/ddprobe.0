Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 593584C9F
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737560754; cv=none; b=YzIKH1cUgik5EOwvizNc5GBS1lG161QYBlEFKFbUzjbTaJsBDhVFoDsnorrHBCOhkZHX2x5LAO7+HqQszOr+H1vxXBUUftnpl3ZMESpRB1Iby1uYftJwaqeVBFuGLoOcODI/XJYXDH4VU69XfzO4/AwhpaXsXdeBeyWeaKmRKfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737560754; c=relaxed/simple;
	bh=7UoT66sI4Y4zQ1BI2i0kA9H2NKsmX3XmBXj4jhSieOg=;
	h=To:Subject:From:Message-Id:Date; b=GyzMv7DZxlz6gAybwGTdgEnGg4KEEsIbrSLw/Tezce1vIVOGhsMS3McTC4eIkU4+YElSmBJb4rFyNYBsLvLgKpytyPQJB/VeRwpONrmx7Kt0hi2kHOtJ/ANQVa46iVnt15W4zTG8HbWejPgtvTpJTVaoFH+mILe7fS/jvS7XTKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Th+edDfI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Th+edDfI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D036CC4CED2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737560753;
	bh=7UoT66sI4Y4zQ1BI2i0kA9H2NKsmX3XmBXj4jhSieOg=;
	h=To:Subject:From:Date:From;
	b=Th+edDfIrhCG7i9b2C4EhC4VbQr071Ozx9wey3s3n+W7e19Ik6AmCBZ9AApY4bDn/
	 dCpW3LpocE+N/QPHuFLXVOOX4PzcGcIEWJn+seQiz45XG3PoEOI4FIYDxOgyCqvpho
	 kOcP7LhSAqVcoxDnsnSWWAxd2wraTa3UIxV1SOzKHJuRa5XFuqHZluw8E9mycyj/MY
	 3efAlsmd31j5T17gW1naNbJXL5BZ1i3eFdOMVvzhVkPjtvfsR8tUcnHQOGqS7bQ3TM
	 Ae+46PFejXMJI1CYFP0LYHPpOT4lfvW7PNG+aVVTbrLq2qo83yXQufT/dxECnyfqaF
	 AAetS8SdWiOYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFE0C0218E
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173756075368.30525.16689532369072359871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 250f8b24bbf30bcb1001ed89c22199998c845a36e51d24de08fd98baa0a079f9
Date: Wed, 22 Jan 2025 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737560753
