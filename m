Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5568518AE2
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734150354; cv=none; b=Dn4C4XxYp7JIORFlNB5TRy+FpjfE0G7i19lra53fMCE9i/VF6+DcP401jH8T6ESZm/zxX2DYhCk8egW1m7b0fB9BYN59dDD8bSiEDXvizQvQwTnQBdvM4ceFzAHycJ8MDtvy+4vtdjcTXj8GlAq7XzMivc1aAaycv+XPxNTooEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734150354; c=relaxed/simple;
	bh=5tI0rmOMGugGx1hNuK2/iyE0TwY6pWk1DJd+shmTIZc=;
	h=To:Subject:From:Message-Id:Date; b=ubs6rk62DRsDr9HiFXC8EgFZ3eQZTpwWl8AkZ7CVV3GdCBAlpFcAHWfmtJHm67yKFbD76eXXyKhSqRMXD/yJsMsIyZx9BOwTFbkSrxCYGgAIS4KQwRKxHwinofmMmlokwnSmSy+bEDvomWTEeove8sdj3cjNDLf7CbNOs1xHZA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IcEC4viU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IcEC4viU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC9FCC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734150353;
	bh=5tI0rmOMGugGx1hNuK2/iyE0TwY6pWk1DJd+shmTIZc=;
	h=To:Subject:From:Date:From;
	b=IcEC4viUPr0+82ofKBiWn54iu9QbgG2SbiMLae/M9egWK7St//OAzf6e/DSI0N68+
	 tFLpI3HDY6HflR7rTdfNdPMekYjF+fF3VhLMEQdAgydVvG3NS6jQpKjiPmsW2nZogb
	 oPCERc7AxC/XEh6Cvy8YHu+444/N4yAs1CP3RtHad+SA/FZNhbqKiuqQlG9kpIMurW
	 5gdx9m5EPKW1+O3yDQTqHfvihMSsbXlKP9/7EKaTKokTGSFdNaHO1V+cMwd9fnO22S
	 AIi8e0xuLf8aK103qLtqwNj/iKjgYAhmW+PHxxsXCoNXZ8j+6mihnqixCbmRdnQF0e
	 L7VOEUb7YrI2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3105E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173415035363.12614.13940003996856314547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70c47368c3f003accde8c9aa937c25b01bf06e6370aca29bda5cfbff78ad047e
Date: Sat, 14 Dec 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734150353
