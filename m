Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471061E501C
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752614396; cv=none; b=UAq7fJx8jIe3gQY6n0003yQxwNvKnV33edPXfvWo6DrzlN9KQR9XDrxCyVbkL/b9JQdhRM6XNeqboi9jZaoPgiR44udJPK37vxM7KgpbKyn69UzsxFReMzNHw5BOvcu+6QUnRQL3LEBqWLtua94hiyFuIHd1l4MC33VsaZOhCgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752614396; c=relaxed/simple;
	bh=fr2wGRf+6AtuYq0qYJAM37RiuC5egMuDyqczYaYPtgQ=;
	h=To:Subject:From:Message-Id:Date; b=NR1SbnXznFC5WTrfJLa9RXPMbOpKri671v1GEpFXIbt46Imyosii0PlX0/Tlngl42agJ4t0XF9krNBvKT9m2ZMLa/YiSRfk/ufL0bAv6UGHOSaMPC14KXvZmDMh/iOsMZJcDs6dBl/fZYVXbcygP2cY4xjwolv8X9fDqbItI4HE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhNJfepA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhNJfepA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A3DC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752614393;
	bh=fr2wGRf+6AtuYq0qYJAM37RiuC5egMuDyqczYaYPtgQ=;
	h=To:Subject:From:Date:From;
	b=mhNJfepAEY8T+1U+nxzBDxs3YRI8wdQLAAyIaZ+wUQbRqlSPLBsjvmhqh2Qjpb4G1
	 x2yj71ft+AEd5U9Zz0ySJ1xi1ozbi6aocbEz+wfY5q4wqxhiI15+mt8/TF8PqYyYHL
	 rZEv8HTSbnGkUxA7k9jE6OB3vcd4Rm+3mfEWWx/2gcCmtXwEn2eKrvijUsmJajBVUa
	 SxSCgnbd85faxa+fii6rPcCYHsSxQjawy+psmVW2gbjaXyVQWgvvHGTibZmmB3efus
	 /Z2ZYRXFs5xRrqSTCWgAadfrqooIN09R/vj+o3qyZKhH72vFmCFpMn05A2/w4ZnJ1/
	 dGjB1vcbpt23A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90485C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175261439358.31057.6452245845588596442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e458c6808409623285d03dc583052d17a8151018e907291b4ff8e676fe4d9f5f
Date: Tue, 15 Jul 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752614393
