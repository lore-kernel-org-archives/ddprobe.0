Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C61257C9F
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771034694; cv=none; b=WjKowrrF4a1exad73d8B6BJIsLOPL/X64fZxA8No/71yqms1zFfjasnIJSGt/M67Sh983/K+TsVmeg6ZyHXUEh4QBXGdOT36aWNXHf/txu0rVTAnXUYGJN+ovrFyMn7blylppaI3eSyD1JwHK2BZrIZPeyW0aqoF1ys5lu8wUuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771034694; c=relaxed/simple;
	bh=gcJAP6vUHqtY23cOuJHQYSnwzGITaiUeLodkJpT5pc8=;
	h=To:Subject:From:Message-Id:Date; b=RRaxlmxRH+YjgvaHt2+bl5vo7HXd/WiQKIyGbrFqd7scXBAX7rzjpUOEC26GZuvoVvN8ilifuLPoGkPhkflv1BPLCM58ajHgtiubJUckTNd0FeXQfACfu6rbXIkBGaFD6SnRys69cPf3mESyo0hzQ9Lxg3Urc1g8T6Q4qUHHrms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VeFibTNO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VeFibTNO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6C6C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771034693;
	bh=gcJAP6vUHqtY23cOuJHQYSnwzGITaiUeLodkJpT5pc8=;
	h=To:Subject:From:Date:From;
	b=VeFibTNOrMqFL2D31ByLg2+wfCiY88fUchA67gXNpLaskjVTA0rG3oWOjbJJUdTIO
	 MwzCk2RjaPpQy2x3wyt7EgKzXAkYXUOeaTnuKWEKxl4Nd3wV16Ml4YjQfQkrD96Suh
	 GnvLveRUz/oTAuYk8ejo+VMHcro8wbGcFADIHvLEDCM6lj5wWG+eG9da+Lrus/W6j2
	 ui6bMTflylRIAIMlJrorOr6FfDsqFskhWvAFn7Q6iF+dsUShp6m/U9ESxzoxl1vgl9
	 /c1cB+7GvdYT9W9J64hiO/a6uADqw/rxvFB3nVqBIaUgAda1aDt1QwBaSYAUikF1EA
	 cWMnFm84OWC2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D4D8EF99EA
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177103469359.2094.10066391875727357649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ee2300e7fb26da622dee0e5418af2eeb2f73a219edf8c034e8f8a307ca5e964
Date: Sat, 14 Feb 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771034693
