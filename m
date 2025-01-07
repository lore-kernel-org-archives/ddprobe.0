Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F719158868
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736238354; cv=none; b=OhPLviDd5Kku5RCj+6q1PMx77Y1NbcOiAauTq8s//IscfAR7En8c9rnvlQDKvq32v1EWR3QBM7ejEa87AK0LHVLdPDm57Lp5mQ3LdR0wvKIU3dpFOAbuT2sb6QhRERHghR3kdbJGqrNdsTAb8BT7WW2M6S7rpWh6v5sF43HhWZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736238354; c=relaxed/simple;
	bh=XXK1VEpbMvJ43JLRY7vCZeXOULlz5CTO6s6qK91Htdw=;
	h=To:Subject:From:Message-Id:Date; b=gITrx59F98ANUD64Juirjt4Ae73hJScvS4BBQb5ciHMnPFrwKQFPGFc39Cxtf6sG0nnfp4vXm3/X70FQKYXegrrXmFM0rz3RBF2eG7cQd54rJq7Ldc8H58WGmZ/z5SdfIXneZQJa60lLi3aRqSdmXgzmH/nyOsZRVqC+/b6VBts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qy3FTWHW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qy3FTWHW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD34FC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736238353;
	bh=XXK1VEpbMvJ43JLRY7vCZeXOULlz5CTO6s6qK91Htdw=;
	h=To:Subject:From:Date:From;
	b=Qy3FTWHWecM0ztsVix2gMI9zvJPLKN7jOd80qRc/GJ1yz4Xxv7RaCK4A1CfNxWzQj
	 L4ypEw/kiqj0XpMhe+mhsI8kzOdJG10UfhLbkV/xM62zHTAF03m79llwXnKvbctUxg
	 Ya95rkRbWH1Nzmk8cjalfVmhdSo07UzvOqhvwihhAwFyRRAEP1lfvu92887XRjP+81
	 gj4KJffJZbINa0ir4DL1/kjK+BVWpVGlsnPqF+08zC5p4OzG2sh5B/+O4G2novGzeM
	 8/eKBFPCJBXWytNq1tfzGf++hr02uq/eaUPRi0v+hrVKFKppQyay5haYZiBF9aySyZ
	 WzkIUAv/wFtQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95733E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173623835359.27032.12093638917938201974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 632449759702ae90a3fccea603a6408797d1c24cac79c5915879187a29142800
Date: Tue, 07 Jan 2025 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736238353
