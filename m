Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9901A79DA
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787031034; cv=none; b=DuDWBZuHGTBewkpjRvh9yKK7Lhp2P41uyGqTAHBJR5WdIax/ZKiBhgzDrON0RGN7mxC9R0e79E6ykTREZETt5tFVHizFanTH7s/LewOeY0PfULmx87Lf4Td7juUcO/uJUlOrq5eHcEP6+NS7m7v43oqFzfQMJIQZMw8QCyGekYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787031034; c=relaxed/simple;
	bh=ih6A1kMWGEcN8YRqzdV9HqN9cw0QBOUj08KNbRzX8YY=;
	h=To:Subject:From:Message-Id:Date; b=PFCtuDYVmaW0MEiUTo3PnpNv0D9R7Xntey19r1sNI5WF5cUGA1VLNEKMhorSfJrjsxxDpIh6K1l11NQL8GaQODKRyeorfqVwXlMZ1yJI2DH4VNap50ImTaWiAkKMX6kzBwPo3KgsE6u+4JRT/4p7/qzIsMVIOm9r5zNpjqkgfYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEuNFQBf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEuNFQBf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD13C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787031033;
	bh=ih6A1kMWGEcN8YRqzdV9HqN9cw0QBOUj08KNbRzX8YY=;
	h=To:Subject:From:Date:From;
	b=hEuNFQBfhD62ATU6NwXTH594pzsTXL6e7SkunTknUOR5YVK/1efSVnFOr++d4apRk
	 yMwhW3g6Vst2SmcsquDfHo6hyJS30w8I58x4zB0UJbYgX4CcifJh4r2mc9X4mnBjty
	 5jtv3cpgH+5uK/z4/Uwfcyq82ydjRfgzuF1Huf2NXuQfCOfEC1htI9i+M4pJIU+pJz
	 hHYvITvmrmjezdsFaON6ZPGAjhlpvYxMOFQgzBkvpO4Pfh/APbDoap3YxLD/fRKht+
	 HOIwIj6BWF++c3fDAQddInx+i8h4YZXUkfBvkammJcSYY/N2d2QbTU54IaPnVNVBH3
	 871jEWGWhkMCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5C7C5DF67
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178703103370.24029.7253126864695320192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96a1332e8899b5acf9fc4fdbdfcd15f601eed1d474407bc4b025afd6147d60bf
Date: Tue, 18 Aug 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787031033
