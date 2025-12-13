Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178D515624B
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 18:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765650774; cv=none; b=Qz2yy++0sL+GWzlO6eumjgsFl0Lo2IMFHFqz/XBKh9LN6AyR4Qdvh3MpswPX00NAf5RkPhQ6kQ3eGDrK5DlrxKuszcIWi3sk1psDRmxcJ5Mjl124bNz44fT1egQtsMFok6qpkTVGpbCKd4pa15ig6SioNgAdN2p7UfXKXW2XXSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765650774; c=relaxed/simple;
	bh=YPg4Nw5MsYACjo3iyKx0gUXEHg84GA3Hy0r5Pgnc65s=;
	h=To:Subject:From:Message-Id:Date; b=epLvy1hpsy/BxxPp6JNXU+jaSDW/XTUkoDgkVSneavKoL7woiItGkZwPlYR++ElorlwY/PVYu2UA27vFTBqCAkDrVMVi+PCTnMi47Qat+wktY7f//5entt5JJDcP2WprtmXNq8mDcKixOIMFOcBkBmDuAtRedMFkaIgSHka/eM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GbwOeTTR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GbwOeTTR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FB9C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 18:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765650773;
	bh=YPg4Nw5MsYACjo3iyKx0gUXEHg84GA3Hy0r5Pgnc65s=;
	h=To:Subject:From:Date:From;
	b=GbwOeTTRgrPbs8wLZi5BhXxWYS5Pir3zwxU7Jx2KDOVr4uqhvfUJBpDQv5RF/6son
	 O2ErBuK/6p9TcjxhA48w04l4crZN/iURFMDz+bBFlOWtYOmR2fpCQwkE4hyZXFrkn+
	 WWvJAKer24YDNro8DwtpabuAiNmvrNr7Mqt65PMa79BvZuosEQ9Cx99vpGTYzie7ny
	 lJ8wI2EB2NBekVC79gV/1zBSP2Z+g+xrX9qRik5JlBu9QX4h6c55zLOOPwhXqT7wtT
	 meY1kq5uRzuQ7UN3S+laVNz4bw68ZW6weLuhVWnUf8Vk493OjpTU88IyHG6MYJU+Im
	 KzIgx336OIHiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FA4D5B15C
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 18:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176565077358.18418.12536707479537448599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4cf623ff989d4540af42a824f65f434d6e7c296983db683125a653a0c48ef90
Date: Sat, 13 Dec 2025 18:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765650773
