Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6397448CF7
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 12:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784032714; cv=none; b=XxZkwiyjLAcjq1PaG+fUaPRy6kfgv2umpR6DROc09gky9AJI5aA2hUOlnweL1Jzui+WnY+bixx57E+PXAxNnHWP3dTchmx4RFAIlLzfl/M6xxcS+UCO0lkM4FanUXKzbL0bqMBXQq36skiB75z24QE8uMliodY1LOs5Dh1+OGmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784032714; c=relaxed/simple;
	bh=mOie1P6jX+nXr1yncT1Hdp35tRZuanUv1DVza3aLkh4=;
	h=To:Subject:From:Message-Id:Date; b=MxnJCcRs4JqKhichzJehMK6VZidKOPEBiZnN+BfXWheUZcKEl3NILnaOB7ubYO2m5wz1+vMiGAqZtuAb9jNi2slhN8vO8FbFlVyAGXcGZk85Ldyr3NzKCZDK9nhkWpDytYddJuPmJpnLmVjQobpZJpoXd7R1i4qN5aviIJhAoOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DkvJmgMX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DkvJmgMX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCE2C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 12:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784032713;
	bh=mOie1P6jX+nXr1yncT1Hdp35tRZuanUv1DVza3aLkh4=;
	h=To:Subject:From:Date:From;
	b=DkvJmgMXQmOzOWr7uLjzBC0yw2rAJFKYkH0FwE3zcryFzBU/FGcy1rvkPPyJ2wPdW
	 GXKRHRg1ZuOBJHchX1G7fK6VhgrMQbF28jfrrjUtMQ0+vLQxqgUS9Y3xxKnUqnhdkV
	 DZFEbxYJCp7G5S4Ikr4iotVtEemgVWSEJ74k9eimRmMXa7amfFVL1MFcsjCGt4GjUI
	 DHnjnB+u7D1ojykIPp2e+w6Ed7qH4JZFeKgB7qu4bXt1gi+Zpr+63jExKx0Ybkvqbr
	 tSYeo63UtmSZVTrGP1JYDueiovzJ3X2LCpvA4veeCaQguvobk0AH05RB3GBE43L0Dh
	 aMy8DXB0DiXRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6B5C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 12:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178403271368.18099.2392438823725836496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a16d1673b69f38cb184aeca60e95f08f825aee22fe4c4e32105d0e7982b5763
Date: Tue, 14 Jul 2026 12:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784032713
