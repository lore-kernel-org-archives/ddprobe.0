Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C442C694
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 18:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721241923; cv=none; b=jBZpsGpttKm9o7EklZpFgvTddNYEJc7CCA+tHQm2jSOux2DawkApbjS91ZYxLb0joo1g2/CA+xDSo4832C0Egrclk9ZFhhaR3F/e8FsT4vMcSWroNqodDuHZHqgn9AKncX4AaGNsSS1n67NvjXS5RIV13G3KO1FxQ0f7+YAIbW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721241923; c=relaxed/simple;
	bh=Xd3h1qpYfx4bHLJiDdl2Qt1o3Z167WWuGoBtEaucRLU=;
	h=To:Subject:From:Message-Id:Date; b=i+8naF5njaOvT3I3Hw4sDe9wNJFZj4ZZ+0I6bOMF/lkKUQ4mM5y5vI28vjBx0uVUBKnzP9On+T4043ZACPTqutmlxcRIyJ4YgpILV7pg6ruTW9k+XBlN5NdECQoouWF5oHxiGfX9e7XL/Vz+sa84NTuYYLsFDs6zJ7Q59WKxlx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLpVlOg6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLpVlOg6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D616FC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 18:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721241922;
	bh=Xd3h1qpYfx4bHLJiDdl2Qt1o3Z167WWuGoBtEaucRLU=;
	h=To:Subject:From:Date:From;
	b=TLpVlOg68l0CnAR4BEQw4O4tLmZCDMrNDdP/aeRjpaZ7k9wwZ6HujaIGJLAV4nt56
	 ETV+MkAxZLGJNNT4s0k02neI1TIRn1cQ0Zej9l9rTR8MehppYxKV1wRs6GSyums+eb
	 APzSSO6bJG9MMPxhzpCGFURweYswOTp6my5N3c+M0RfS4iMpM462lBE8MlaZcogTDi
	 XM9MyYC+1KxyGyp7kI2sl2ACYWKKuCBVLzzZM8sOIFogNu5pEvGUkATQ0rLQvWmS6M
	 TaSs6PwVDDR+yN+7acgfWWERl1PtaVCqrgqSF6igOND2coRcG2DHF9CAosyrZcVYq9
	 uEtwdalfhWz/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C51A4C3DA60
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 18:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172124192279.24141.9107494147716347090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3632d062b6ee4b224dc357d999ce118cd93183c651569a9835fc1d251a0a3c8e
Date: Wed, 17 Jul 2024 18:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721241922
