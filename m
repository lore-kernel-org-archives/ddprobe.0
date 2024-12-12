Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4015D1CEAAC
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734039354; cv=none; b=Mr+9+S33elEOYlMsdUB+dWrjcG3YdK4LbKr7ajO4k+Cp1Lw09mjw7O/Sa0Tgt8Ix8e7F5MOZQ4Sa20s9sv1TTrV7KiYtq/qql0RNFuIMGmqXkaFoxMc/ANZbvPk76iJsG5Ipj58K6zJhaXVwE+iA5tM7ZRcWpE9Zw8ldAuHAnHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734039354; c=relaxed/simple;
	bh=oPMaBWwJtlrUHr5uwtH6kGEDv1Ml9Bbcbg8QKOBHUDQ=;
	h=To:Subject:From:Message-Id:Date; b=UMic6cCcQ6I/IFnpllBN3mF/vsULgbWf1WZYUjSsLBqSQjo/O0brv+F/Mjr2enx3zm/HA+01ObVVVBm0y5KqFAgPH/9sPGa3fq7io7gFfvU7SvvFzNs8wrf268tnHEcidAygQK8vaVd45brh1c1iNP0tSHVzzZeg7LmAcdb8fug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XCZkvPqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XCZkvPqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B42F8C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734039353;
	bh=oPMaBWwJtlrUHr5uwtH6kGEDv1Ml9Bbcbg8QKOBHUDQ=;
	h=To:Subject:From:Date:From;
	b=XCZkvPqjwe3KXMFvG7OFFkWSJ+2kMulYeYozr+HhbKds8yYGFXMqbSl07VKusSoEH
	 pYfyTWbeP+nLD5c1YkMAK0mFS+NznGIqONiz05IUcnmAs3PNEJpQO3wjYHn4cqOwHm
	 6XmPSscLS4Ml/BMqLXFq0gRylWChwH97lUBljPsZICHopGGi/xGIom32+jSfEJv9kj
	 MOmu4OtTxNU1xZqo6JSo4SfVQ/c1q12Q6kcfDwpbmu76P1M1oi6Iau64ZJPKCykoJk
	 Akzds/3nIvFwTyktwLoFM7W6u3a1GRA0rsiox6/f54LZxVAePEKKXJ6PRjcKALw/CY
	 TpnnF8hGHoe4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A02DCE7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173403935364.30911.2472064680418999468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be93469f52479d2f3c80b9bd4f381852889ab842b8db61bbe14adfc4dbe2ccd5
Date: Thu, 12 Dec 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734039353
