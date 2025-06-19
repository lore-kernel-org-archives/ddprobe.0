Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E171AA782
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750363794; cv=none; b=pYW8ZrAmUAStD2X1b0XTw7kn00GlLSS3N+2Ncdu7hextoFpKpj8iWSLFrWzJkrWd8G60NoA4gUmPT85iyoceMDirjFhpLEKkXx504bV4Qu7cG9s8uiOux1XNRjnwHdLtVCZBaTRa9gNox2Qqmn3/CkgriRb7hH9Llpd0rzIVORI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750363794; c=relaxed/simple;
	bh=TjxMHIeuOLKVPw+3wpNO1tCL/qudLjC9TR97ffu8Jko=;
	h=To:Subject:From:Message-Id:Date; b=kXFGwapj2XlVYXKfpXMoimP6IzgtOUDcUDDgE5EqfHk3QsLjs+US0IftVpy0lfQfIrzaKiSwzj13vzUWyTeOMqTZxP8nwKv8HS+7Dvy5QE53e3Y2y244fEAw73YOUnz/fwLlJGEuA5UVG/3PXw9NixCMMm6QtMZir94mv2JmAyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/bTrxpQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/bTrxpQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E41C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750363793;
	bh=TjxMHIeuOLKVPw+3wpNO1tCL/qudLjC9TR97ffu8Jko=;
	h=To:Subject:From:Date:From;
	b=R/bTrxpQh41FhhuOPExjWVpHzTBy4GEhCLF7N1Lku5J5Lj8WYY1WVxRmrUp15QVqf
	 4/LrLo06d18D18TNHyJ/uiaC//e6Kj2ULzmUzquKmHjNIEnoKWDJlOBXz62pM84t7u
	 3TXsCu3xB/TDONK5VaBoGNZlfWqKq7YTkkSoAUXWXHOQIOUnGFOpfwzw3VHfz3m6HA
	 TBPsTYJd9dWQq0Pq690acTLAXZg0Y45IamQ+dv2wk13HniJeauUSAuU77GXCEGeq1F
	 QV5JC4N4Ba1V4R3L5M64P5F9iwpI83XMAzmZABD+aP/hTfH6TMOr2TOemI13gFJFa3
	 Y9aVlTrhK/69A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E86C7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175036379357.18720.14537334204902058953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5a77573a8268f9ed1b74b4fb600c5b8f5b317b702f10349009d0e8c346a434a
Date: Thu, 19 Jun 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750363793
