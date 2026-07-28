Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFEB431A31
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785241234; cv=none; b=CQnzMl+7SsCh/hT/2Gor2GuEKrdJMZX7PlSXUEEZuWQkBXBE8fx9RhpUI31rWlt6B89zgy7o20xou/TXc+66gK3NyB9kGJ87sDDuR+oShNE+0IbMxShB9PGRceQdm+5a7qJPxuebrv+wMALdjtXBWmMyZ/oRQ+ErdnZILEOjeyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785241234; c=relaxed/simple;
	bh=fGz4tF1s9lUkUAxi3qjRwATPY7RQwfqXETLLEDIW/Gk=;
	h=To:Subject:From:Message-Id:Date; b=lXGOpgaaLTguGQYeAhe47q5NF77caNK3SN7HJ2nrz/aqOoljbP/f2J2PtfNuORyyOu/1HCQUanTuX9UFoNZqqRgi3mtQRb0R5rBJCiQ7B5jJG4uLt8HWBQwXDQH9WBabNFkQLqLUqUYfmUFUXCedSy96SOntsy+cXh+493IBQ6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qfxOfFr8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qfxOfFr8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE763C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785241233;
	bh=fGz4tF1s9lUkUAxi3qjRwATPY7RQwfqXETLLEDIW/Gk=;
	h=To:Subject:From:Date:From;
	b=qfxOfFr8voNL8VG9cSZTh+Spe6QlQu6QenxMrkcM3/THtarUexikw56xckmdTlpX7
	 IhSHH1EuqAEVF+gDrDBDlL0UWDYsikxMgUaWMT+xxue12sAJ+Qmwekfnac+NJQRINb
	 Qvh+i8+omkqWoM3Hx1QGaA47Dlh74JFLwCfZaX7hfGRv8MzXM4cNPCRmd8D9tXfyko
	 qdtYjisJfWZzZ8o1jXd5FZvQHQgCi9NdjQKw0XnUhaZPXHkU0jAjZ1Vf3yK5n6TWq/
	 7jfrLx4BC9kSBfU/0/Lh0ieGvnSduc+K0Hnll8gxLceawbd4k9JldOMfStt5yZX9NC
	 BRR6wNoKCOWqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94C7C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178524123368.23901.2807779297754467516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c26e219f77f12ad7e86f8409ae303581d88096792fde935bb4f757e4997b7dc
Date: Tue, 28 Jul 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785241233
