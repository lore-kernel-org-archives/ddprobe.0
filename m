Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110611F2C45
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 00:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764291174; cv=none; b=OWpH5o1mcEe6x/73pXjwkFMhff9vB50++TDrBwXAuW7EB+R8iggFtL/OZKINW5PqhKl4tziXx3YPDExvWPOys4LWQgoYPq+WCVfOT9ghYn8io1wJ0zof+5LNKdiAcx5ZfK0BQ20vvOQ/Qv7QvHeJQuztke6dmiVbzT7Cpt3m+dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764291174; c=relaxed/simple;
	bh=BjtOr7hThl60x1z3Lx3Ku/5vUyQOk+eSEsdiIc7ftn8=;
	h=To:Subject:From:Message-Id:Date; b=iFliFRMjl736ebhYs7mjdOefenTkdpddqASikzqDuCFU8btvpww5IyR6+BmgXMWMrU15SzvhDE7tIqSCk3MOfgyYOIg/H7wT27Uewsh9j3ql4FqPQX3aBpEnxPwLgjc7aILQ+axZrqnx07L0KQS28Jy1vqZNKY1CHPgqZ+R+Fcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AFl2urOa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AFl2urOa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D66C113D0
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 00:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764291173;
	bh=BjtOr7hThl60x1z3Lx3Ku/5vUyQOk+eSEsdiIc7ftn8=;
	h=To:Subject:From:Date:From;
	b=AFl2urOaM0YEDmPkxe4YbM+zat2uGA/0a6IZ+t8wu4Jze1qnPRmjZ2UtWEk7QbWWa
	 1s1eWd5kUluW91MAlDFEjxBmUnWxjEBK0OgKPqyKSeuwuOi4uipt93IVtkP4zT0Kgo
	 UTzqtVfhzY2R6rL7u1A/hoRMJqEbvjNWLKD4NOmGzCZGvGkV8daDPQkiEdBjyMHJAT
	 ybyFsub0Hg3FRJtK6sNtiLsfLTmIag1sxHPL+BBpspmoSq8VJKxCyWJ/NAt3jvl45P
	 LAjTiM6J8AUetPISPXU9KF/zrIXA1O4OBRGk8KRrl3jhnCN9ZWQMscdQRT3cLwFs4Z
	 nV1ZMKMs21c+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FA6D111A8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 00:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176429117359.29752.7402536794530655385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3e9d4614f134695fa468d6b74238ee449787f35b992716664fe79bd4df6cf00
Date: Fri, 28 Nov 2025 00:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764291173
