Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E791D15820C
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 15:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741706934; cv=none; b=tYwol3bhFIO/JVcQMfmwqLhDAjfP5wRvVtiHyT2GYuAh+Yaq2WIGfm5P6FyLjL6DPBKkPjZqTAWm2uEep/UJyncjsQryPiuKQs2hVOsOGaVXNoll4S6Rvom3nyPtjbVnLJ5cUW8cO6GlOCa9W8S/cRgj5s2Dz2O+INUUN2ylLVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741706934; c=relaxed/simple;
	bh=o5XkvYhRLWbxj6mOeKOZSD5Qc75Ymh6lwAyjjrgPuGo=;
	h=To:Subject:From:Message-Id:Date; b=Y++QZbChiI+aQ35lgv7QzeUWma8A6dPfB6ejHI9l3jNhJA95I6Jam+kXcw47wBUSy/hQ8wPSXwMvFk4KsiaOW8QnU+PTNzjoWpAc7ZNbCbf6Bd+JLWg92lN5tfUJST1UbmM02ezMmgxnMDKrwM9A7pP9gGI2ImL8JZtJ8zFKA7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJlTKT5G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJlTKT5G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0474C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 15:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741706933;
	bh=o5XkvYhRLWbxj6mOeKOZSD5Qc75Ymh6lwAyjjrgPuGo=;
	h=To:Subject:From:Date:From;
	b=TJlTKT5GDFOlB+Thvd/pIQhej4EaKGjgL0Zs0Pqqblr72ij+e2Ho0M9etMx4lKVL1
	 p4Q+i7Kvt/dcqA9LRC8aTxxvZ1cxL01PJjS1AtgWFiUmRsa5IQMd6ZDMLVYtIbMoxC
	 O5hT4En3AAKlVKMuptRKxt8qfbT4QBs0mL1dwVNlAaiwIcKIi+DTU/6eKzRauC9i03
	 4DsMXjRXt36RZ8NaCk441YfNj6ReH2bV1V/Xt9HkkRhgE/GN+06QmoDYhgpTIHo+r2
	 OZyiFyzjX01WUZuNQNlNlMHBXl85goX/BeSj3GXo1V+qoWpuYsN8g4/M7+/AbjhSae
	 i3Y3L9Ex3awNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF8DC282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 15:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174170693362.12448.15658436604103083581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ace10c18961328e948386eda2dd65d40165ab84bedd043ce8270f7c827746209
Date: Tue, 11 Mar 2025 15:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741706933
