Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED27FEC2
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711160297; cv=none; b=f+PF8IDgJ4faHGR+kfjWNR51/aoGjGLXMBkcFsagy1SCP1GPQUWuvwJDmzAFTYDoMVmrK7KZ4abuO1fsoB6yxSNxb+EGOVEpeHzth+aaHBInmjZ5GyL37JikLYmNHu4vwB6GQAtUD5xhcJyB4DSVJCuKd6LvA/H64/yD2y2DBkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711160297; c=relaxed/simple;
	bh=JT72rV/rdJK8AClI6ryqCDwzPo3MJNN9EHsJtP1sj5M=;
	h=To:Subject:From:Message-Id:Date; b=GIYPF0si3RnMX1KQWISHjV3P67eOgh9C7owK1zbxnzk5URuQ7NVi9vWlac/A4wFGiLte/gYNRk5rpFj2q8u6t4ddr24Dym08FP2l3qFAKSutcqI8oImpYuM2/Z6mF6U9b5Tux1kg7tDi2utIhsISHCR1EUKApcV/LULbxfNPVKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNkcmaVD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNkcmaVD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C0DDC433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711160296;
	bh=JT72rV/rdJK8AClI6ryqCDwzPo3MJNN9EHsJtP1sj5M=;
	h=To:Subject:From:Date:From;
	b=NNkcmaVDMjNQ+MTPfmKiwxDOUJwsmyBoGZfy/hixwkwra89ym6WZfhINxjKzonu3q
	 RZp6HOOZicdYThVYW6Olu93Ss7dOkPkbX0fJCNNn3JBRzLhXa70psWq0RN6QrZWjmP
	 CXDBCh8hCdWCpdc8hSKK9gPhq3Yo1mcMzQjdNKmrpQWE9QlvLApBHCq+r4CDKnOBu+
	 36ZbA1+NzTUMI7yIBzxd0dgQw/4EmXccct7mk8FHYF9CuZ6/MdlDBnJ/esHp9BJLvU
	 HINxrAEC6vavV3mNjNooOBq0J03lXIyFGSOASQe26+mK9sC7jLrfZRqRLtYupLoX2J
	 SXvK/T+5OMhyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60392C47DD9
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171116029637.9647.10241528987819720491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80c7f76a1b3fe233791a1a669f65ed1ce71c7bed1d39f58d5fe57f9e3ce6b6ff
Date: Sat, 23 Mar 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711160296
