Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB54291C37
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751535594; cv=none; b=hQp8jOv13I8Y8nIgCphTkoGxoMPPy/Cfp9np7KGkALg4YRM0g4f93bQFcfCJdLyevN+JsCVLQlNU0CgszKzo2d4PO32KNaCOHoKRrWlZyzUcZ4NfO4CnO/ktyhDptVJ7FbjaLk2afQOjf0dUWFewxNzcOP/VCC3ThO9ouwvB87g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751535594; c=relaxed/simple;
	bh=rqcfsXPpFtlGelzp/vygvX76TkxDBHSL/dGb9D91LxI=;
	h=To:Subject:From:Message-Id:Date; b=ddZm2tWDSWt1ZZdoGsXYMitDts6sI5ephhNIhRIQQS4/X0NwVYAD1g7eQS6hwig6TeCl3sobuSwqw8TQ7rhRccAh+1fZ+D6Rd0Eip8raOSHcX9jX9tYGnZEX2q0dY1IK81JiEnC0PFGmzwI2h8UbevjAXBGPLQL/DHIfDtFAvOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIjuDBNj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mIjuDBNj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D35BC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751535593;
	bh=rqcfsXPpFtlGelzp/vygvX76TkxDBHSL/dGb9D91LxI=;
	h=To:Subject:From:Date:From;
	b=mIjuDBNjuYzykG8+P5rTamUfeERYXEcgdVmuidQbMtI5NbXlUMXahLmzwcr6uoHka
	 LNd08JUo2uWp652xItBlwcdekgWjNxcab1COp7F+u2VeFUXvux23zp/HwY0v3igsnO
	 ZR2MaJXwucH9S7FfwYK8EN0nFLVE5UjjjsHfSEvkMgtiNEJEuJtL+zIDpwn7xGnqXt
	 Jv5fPR1jwpyTdg229Xt1RIAHEKTVkkf2BhkwGHuuqgWs9a8jhdfHY5ni1bIUkNKKxo
	 +Rv/t7PNGxFsgdz+6dcDQhT6N1+i8WKNg+R3sNlTBJPTL6fnVpPi8kkzW8dz4hf9VC
	 0jnZEcOjB/zBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7A4C83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175153559357.23427.9798202186366194319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90f5278874785b2f181ea138e41a40404700aef330519907e4e48099ff0bdf5f
Date: Thu, 03 Jul 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751535593
