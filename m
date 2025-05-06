Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0DE3098C3
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746496794; cv=none; b=XU7RevV5K3NkgPGdgQKXevdoGwm6e40v+dwc0NsWKLvmN/By25cLgnhd80PviwOAhGSF0IHzTn7nAYPdorcrOTrJfnUCIJ0w22Bgdo6paVxx1Rf00ib5zhkgKEhE8cpYAZIzhGMg1+ko/p4X5R7ZEDtYfdFP/WPZNYO8Wv421iQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746496794; c=relaxed/simple;
	bh=11NIxketjon2B7VLuIfC6oEI6p6x2nU68kh5kA+8q/o=;
	h=To:Subject:From:Message-Id:Date; b=EcizUcVSAhTX71IIxAYjBoihife7ZP8wOoG9njmfMo3UAautMg/5V4Z0p0od4RSNdXthdNSmclIl8q2JmFYPRtnQmJAy2jdky1cEcw0ZJKPSp6UNfPHTfxVhKhYD78y9VTUkOgaiN9em7PD+UvE4fMDyvOMDc5cM7jI8P4d4wr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PftTvMs5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PftTvMs5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C40C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746496793;
	bh=11NIxketjon2B7VLuIfC6oEI6p6x2nU68kh5kA+8q/o=;
	h=To:Subject:From:Date:From;
	b=PftTvMs5OUgEJTOPQaYt0QPeDgToKi3U94kleCTmjeg27LrSwiCC0qLuuZjtCnbGX
	 mg8LiLyLlFqpiKQ4Anue2s2skUleF905b5Phk70xZZowj8yoAPa0zJENw6zLi0clOR
	 Al9p9CYxSMtT5Zjs6DYObiD5CNDdxrTPOzvpV7JfTUCt3gTKEZ7nRXqZ7i4GmN4uRw
	 sjdUaru+np+1xrwKEoEJC/vPw+MKAl+cBtXhHbYtdnY4PO3cyzgyeB73WESJ4ifhQX
	 c34AYo3v+8WtWmDfzPcCzs6QVuX6h+H57kqLPiqk4+eN4+CpftFjWcStIov7KqNDwO
	 8lqlC0vX2cBoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E10DC3ABBE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174649679357.10641.17245388022279451341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2f1cdfdaa6ba5b875518b0ecda623abd87cde1077418b7b7afb4869d5b8e78d
Date: Tue, 06 May 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746496793
