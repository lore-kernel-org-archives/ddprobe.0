Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D79222594
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744081194; cv=none; b=WtMO2n7dJIEivz9RyRbvlzj5b+ECPnH7uO2m4xzPt/rEi0f4/oP6FPR8QDz6qK611Spee+CeFv667D/VRE0qjCjH9sRutduNna6LSzQ//skdVs5h2T7XCgGwtFycR5qqnJ/l7U5MPpzDZxv5Bfv+A5YKe2KUdZPJu08sbB1vHyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744081194; c=relaxed/simple;
	bh=Y2xMIn7ayON3RbZFI8Nipa3iiDnNj+zCg5SjhGNKwDY=;
	h=To:Subject:From:Message-Id:Date; b=JVf4CiNOPOf8rHjc/Wifox89NpiJf9+RtFQBweku8dtK0dMmGNj3WNQtNI80uUFuWPKc1onpdWJs55U7Yl2kMVot2tsz3r8wTYxh3Df3y0U0IYgu5wvFFvFKsFxukC/rrDMSPYuMbsITZf9uzVLR/t0XAYN8z3F2YHj3Alzz+xI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UoXFFygG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UoXFFygG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8981C4CEDD
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744081193;
	bh=Y2xMIn7ayON3RbZFI8Nipa3iiDnNj+zCg5SjhGNKwDY=;
	h=To:Subject:From:Date:From;
	b=UoXFFygGwwrmshqWPhZN78U3L+QmE2kfCHyomVDANBAeRhARXtZ74wBfAHLCpB1bO
	 361iTaULt2SGywR8P5+Mh7C3TWQjuHEWxjpIW3+lk10sxwbp85x87LnLokeXbcN+57
	 tSs01oCJ4nQy99VLX9Sq+ODLVSRy0zA0H4uCeSktLSdhnFchR12Td2qNaWhipJaB9o
	 AfekVMOizV7iN/Nl8GiItrROIJPrHbWOaEkCMm884KFK2xOY2e+OTF5yELBTXexOKJ
	 dOAjJyGuJcPqVlyu5mk9T+iuNl+HhfK3b717tfUnWr9kg6gnAM8Q8/sSHHNZl5duy8
	 idYN0DZ1Erkvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD10C36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174408119370.1965.17009331474091341666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0867b5720d0982065ee9c33337bbdd3dea12b84da260e1edbd7bd9c6108ab8e
Date: Tue, 08 Apr 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744081193
