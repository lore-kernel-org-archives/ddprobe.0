Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7CD255F28
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767459834; cv=none; b=LMYDRu3yjM8Cp2AYTT8VpJvo7cXkTugtWVn0MekzQSncb/uxVDYKnmmz36gYwjjXgeuv2qMEFYpwKzFlV1v9Q8db2EOUJfGzEsbh5p3RwwJjkU35vRm9ThNH9ngWuMNXF1Isank3HxAKX4fUiyWPco6kDGfInKduppRfNlyQ1tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767459834; c=relaxed/simple;
	bh=Ehk24K359AtkMArqG4kcI8E+xJBS4Up2R1S+l/anxfE=;
	h=To:Subject:From:Message-Id:Date; b=JY+IXpTq6WjrbtgIQw9oCeu7AWEcvivuNVQa6g9XrBwMggyJxjQo7mcN450NTfSvICc1JIYn8zYaid2eAqGGO6aMKHQOcO3QETueiblgCLll3wfMcQLBl8Fru0ivgQR8sgZ0IHcKVAk4XNCa5FYZA4Diyl7rfLrJxIr/gkO+eXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEuJTwjU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEuJTwjU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BB8C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767459833;
	bh=Ehk24K359AtkMArqG4kcI8E+xJBS4Up2R1S+l/anxfE=;
	h=To:Subject:From:Date:From;
	b=sEuJTwjU5GJYkYeWIUqSTn7yHTCQ+d8tXCIjynVSeyfwec+GR1DqzLKokL4NfPmZz
	 mupgSy/w9M7c1iJ4fBqpRGhQ5ruTVz1lNCUpsuWlQuU1luTRGfzCRGwlvXeM977tY5
	 brRcTdia3QuMYGOupgu4rblDRsxen1h8EOahWA7V7wLFs77Pk+fsxElzbnIO4PQcpm
	 ZdSg22NMoHp9sRfGjmlOY8foszkatRXDwitp32fgO14SyA2MbY57MPF1Avlj5jEGiR
	 PY98/DDqNhbwi0cve1ofEJDtE6wtBLTAnJy/YEGO6oVD6W6zhN1O+81xJhixFyQG0P
	 HaVLjDgUMfWig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9396AFC6175
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176745983358.24469.15880450266711886327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4917eaebf97606c34ef6fc70c60c42d54e2fbf074b6e143c41062d959b6405c
Date: Sat, 03 Jan 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767459833
