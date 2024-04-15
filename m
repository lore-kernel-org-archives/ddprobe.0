Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C1825601
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 22:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713219563; cv=none; b=A38PDFSemyeihEb9eaT4pC2y/iF3WAxnPN0N8qGIJjPs0BcsdQdpkscCHMJof3/JMgFv/8xPnbXcY1PNgdAY6XC/W09wUwF6h++j1qYisqZe1yM3rtvsfkhjJjfEjMrhcxZ8IoUXqF/HwB9wK+zVpkkvXG+lbhULVkCFFDXVEk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713219563; c=relaxed/simple;
	bh=D/qikUL0pYg0pe23iTpRR6jX0Iy4hyY5q2fsb2hIjWU=;
	h=To:Subject:From:Message-Id:Date; b=fa0lbDu0z9GzQjQKlS9opnmSXDPtnIbhDIJkHYUnWIdKuMixjPrmmkEraNxKwSQmjflfaAOvszXeDTYdY07/ju+7M4Cn7XJwaLuj0UQfl33RTvpAhLocm2UKSQL+fh+s+x0f7WeJd2GRMvQsdIJLZNARdqTvYj+9kmew1BpzEAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lXVpy561; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lXVpy561"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42FFC113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 22:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713219562;
	bh=D/qikUL0pYg0pe23iTpRR6jX0Iy4hyY5q2fsb2hIjWU=;
	h=To:Subject:From:Date:From;
	b=lXVpy561EX5v5FyT1IYFz+lrDwNejh7aQOGUxLsPcYoNcWbLKvvR1q4ww4f+M8CIP
	 YYGS45ddVa3onxR1IeJ8caNp3BY/tqC4s11W3EVjy5SCNbEKgIbMjOT0aykT6lNYrb
	 EX6newaGsRPlgMS3kfN3/3eVhkQRgOBtkbWZynS1bXh5kFDqSlHjb0S4+GqlkBPV5X
	 pnAYUO7rGZOD+LImtOlEaDNBp4iBWv/gJ8MLBaotxN0A3vIOXCTqgwLc5ngz52U8wW
	 O051SiImbV5wpIhJ5cW9yg92Ghd2ehl6u+B/1/CyN7BdGB8aSa1gHAamoQ+1gE+JVy
	 W1vm9UGp3yoIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF3B7C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 22:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171321956277.19235.10914895143281987058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab2d15651a41fe76f1c2af0d8ce371a4e564a0880c059161a58bce530ef22f27
Date: Mon, 15 Apr 2024 22:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713219562
