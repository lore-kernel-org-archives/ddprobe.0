Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210DA22094
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752370194; cv=none; b=DIdYujOaGkmqY4P6coC3+jtL9INrHfUjb9GJdlw27MUuoEZkvmgQR8PTWA5GoWISSt7aGH12eaOA6UeE8kF73LtfmZxD2E3wfO5xMgWuW4V3CZlSL9GPebAaSlnv3JjLhD8fZlSPsQk70/XUyhl/XUP1/TxbX5V+rucPGG1XuK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752370194; c=relaxed/simple;
	bh=9VeVUUAdxG540c8cF+d8Laql4buJRyvwx2Nvh89upGo=;
	h=To:Subject:From:Message-Id:Date; b=sZvmRRwX7UGa45IbugZk9KT8B2hQqnyOzibfitb1MJVrjiL/vqk2jEIvs+3IrkyF2W9oh5Be5/R7X1115DAdNW0A41+g7fisvbTa9R523+PrKupyDeCuiS+UjzLsjGZxv9AH9E39+VTo7awY/0qvDRpRpy+gduZybEDs/1K66NE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIha2MOo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIha2MOo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3279C4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752370193;
	bh=9VeVUUAdxG540c8cF+d8Laql4buJRyvwx2Nvh89upGo=;
	h=To:Subject:From:Date:From;
	b=rIha2MOoQ16P9j/RJzm8p7DXOHGqRB7u5gJOYlrasdU1DQMRl6RBjH88tVxIM2SCh
	 vzZ3AOZsLSH7wyE8fApIkdt1rb7ABnGQopBCa9jyEutiOR6QneLqzz4qxDN0r5/LKu
	 B78syuFuo/tUu5fV0LY2AtqmnVCHsDNQuANPJS2INfCsxSWwkh53ZUwNuYbVn+ep1s
	 /F6KTVHTUWflJJAqazkZxlma9pnSSJPl7QTDzFLjJT65zPWLroBIveP04i7zqMNfo8
	 CWqp8JAjlStw48f2ITRS3x8Y0wDULWfLqul5QyHVR/H5sGjJ5aXKwlYfCY9t7M6azH
	 DOoUDw/dQBXIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F752C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175237019358.20076.12689686561397362693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8742178e13305f415099e4594d43e651185925090dc3ad2eb263c44e7c786f6f
Date: Sun, 13 Jul 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752370193
