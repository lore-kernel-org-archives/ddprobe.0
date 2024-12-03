Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CFC17C68
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733201754; cv=none; b=SXm9agCY1XFgOoHJFb9nU5IW1Ksy5pA+AyID0o0JVmfvGPqYLptCUbbnpeSsRX1iD5ucJJ9W/I+LSfPGKsoz91u0wCvEsocMWfAVP3H9mP3tTiwicEAhQ+6xBSql+YO998XXqtEX8HJOdtKGIYKeaL0gQ1dEuzf+y+uS/E+UXvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733201754; c=relaxed/simple;
	bh=yKOOjjpF+N86GyQBNrr4Fbjooic+YjZzgAAr3xWKN6A=;
	h=To:Subject:From:Message-Id:Date; b=RX+rCa5+LIji9b+rcgpira7CBWjQD7EkfLae/HjY1P9m8wtBv7bfPP5E0JEvVVaVi8tDTpQ5ykVVAYaAV5yy4yaHvXW5wr68c00559NNuNi4UZ/8VzrGWR3LHvI4f1H29n4pWyHIedCiq6xLGZdkJWD9YVAkaYlWGIgoNS0Ztdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qm5x7qPs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qm5x7qPs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9D2BC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733201753;
	bh=yKOOjjpF+N86GyQBNrr4Fbjooic+YjZzgAAr3xWKN6A=;
	h=To:Subject:From:Date:From;
	b=qm5x7qPs/XAq04NpO1UOXmXMTgeo+lZai/SbiJ516WmqhzWywnsnjphmDscGJE8vC
	 P1wcyiWnQcSOaE9ASG73s35CXslH89qx7CanlHe8WSSqtClPGIlvVz1ZpTqGNNY6h1
	 y3PasunIGxqQG2Wl+jQBxLrx8qsjheve4SYLQUrOZXhgrN7kjOrUlzDiIcEU5jTUPB
	 Lo1CoHBvUelWPKQZoetXVeV547WbgTIvc5PUosA+aLpjqZgynOihxDTGaWNC/M3TIN
	 2Ei1m/IquiaSaNb2MxUbogTtRnAm5tHC8b//RTDonmImJIm1Iqqww5erQUEPyH/El/
	 niPcYgQvT5fMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A60B6E6C5FF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173320175360.18837.3620500488786361788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93b9f4b5242b2e679ab4350bd6a598fb8e48247680ec1ceb959a187a843040b3
Date: Tue, 03 Dec 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733201753
