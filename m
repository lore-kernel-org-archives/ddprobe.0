Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312C518E76F
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743620394; cv=none; b=Ab0NP8uQVywb5UApLJDSSo/3oygNtq6zSAjJf3bD/kR45K97Be02kgNtDhhuvnQYdtJEQK4OsyaVhkVeeYPWxtDkVJoOZ0laS65/92thfIwCnTqIHFA8fTVi430obZbQ4hTqQxtZtZg1wmJsD/sn3zSCXtFy9K1gg1Ww/qqgswc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743620394; c=relaxed/simple;
	bh=+vDfEm55Bnifow2H9FFM8ybEHKhLSFw8Y9iVmynz+Zc=;
	h=To:Subject:From:Message-Id:Date; b=fprII4yqravpMgV7QknCNNqNVczbGW53YYnK7wJo1kVBg/RIAfP80+yWxx9mhc1amLrWrevkD4rq4CDkneDTllJoilOfGQwja/ZWfmwushvagMZVTr824QNttC4Y3JLCY1hnNInXbr8xwzhWN1SWyBuvxmFPax3VM7k1XvoiH9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FeZKBK7+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FeZKBK7+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A666BC4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743620393;
	bh=+vDfEm55Bnifow2H9FFM8ybEHKhLSFw8Y9iVmynz+Zc=;
	h=To:Subject:From:Date:From;
	b=FeZKBK7+R7UWryyFvwUDSo87L1NcdejpMwYjXhQPbHAD3tbU+pgRRJKuuSN1C5rpl
	 FSrW3og3K571mQ5fSqjdiA9oAN8sRFW5HhIq0heDYzSrVAkqOPGxeivDqaGZIOhgMe
	 xZ/1mF7//1Hk5/77uFuwE4HAeUgjuJ88JcjtpIPaEhnEunRmMjjwzi0f7Ex8JnN/7L
	 /DK32QtNh4dD7Ax4x+WNwP4kVq1vW29D3IfMGRwu5jExbqV+AarJgeK8UCcHnUyIcW
	 2MggiNq/cfAIT21Qw/6nyN/VRlKsE79oXekN/pUk3q2U7dXOAzpi36pgR6qaygGcJK
	 I3hXcHTAgm5SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96ACAC36017
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174362039360.25600.5210944811455073300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f98fd4c8700357e068e60d9cea585e485d7271124afd8c28ca5c535e71723b54
Date: Wed, 02 Apr 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743620393
