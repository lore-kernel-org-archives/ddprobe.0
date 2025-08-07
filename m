Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12EF643AA4
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754526594; cv=none; b=SJzbmqWvF/JFSbZyawmEKk5sO5lnhhgW2kyyDGEPeaxNX08qG6iMkUSts7TCDOa5FaCamVC54Jn5/gq+6W/aA8TlMtO6+6WWAcH3q+rR0NkWGCZugKMx5PRkoWCpe3HcoysI8LcIXk6pVRMpBeVZShOL2+9Gf0d501C2XVBF/x4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754526594; c=relaxed/simple;
	bh=FEpJkCzj5BC1319JTy2mlwVCA1b7fY0F98TC9i3hcGY=;
	h=To:Subject:From:Message-Id:Date; b=p9rZoGlnHEqZLU8fyAyyTP+x95Ad9c86GJ+4a977d5O+8VeOQC9Xa/MZm2TeQmsYw+0cuZ6fI9YCtRx45olZspHZhGzE3Qm8dJ1R9Yn90/GZJyp3Vrod8CJofsHW03lTKUAqI4QGEit1Jr3+J/xM6wUj9cNlEsPBzEhQy69j134=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mtjufC23; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mtjufC23"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46AAC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754526593;
	bh=FEpJkCzj5BC1319JTy2mlwVCA1b7fY0F98TC9i3hcGY=;
	h=To:Subject:From:Date:From;
	b=mtjufC23Acgx1FXEl/HI1n8HeK2MpArK8lQM5wtNTAca7e03vOnjqxixKzZsEPF6V
	 ERWVkfcH8MCUqhsdMVofYOs/QCTX0v9KNdwILEQpfcoBBGetA048eIyoRnHy3wNMgd
	 dU6pLE3NayqCk6DlDmpfS7QDrQYBlL1fzClMHXjHokftFNj+0tpX60IJ/fP5tEcQQF
	 H8Fn5NzElldOjOLe9DV8mDM8xlG8/y0tHPVya4KQbKbec8/2CKclcV2pizHt0nSNkk
	 8j5wHtMjJTcqxP0M8Aff32y/Du5dM9K3d8+vofkdpL9Nd/4zbR+gJK3udowPGjHrtM
	 eh+PJBl7urdrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92172C87FD3
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175452659357.29151.13437477123649264357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 951932ea2f615ee30d5b699fd8c22d20f9fae395615eba60a6a9ff63fa8b5de6
Date: Thu, 07 Aug 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754526593
