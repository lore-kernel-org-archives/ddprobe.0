Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1235136EAB3
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772631894; cv=none; b=jXCIjbF1GedK4ccot9gZ8teoypMVWBRptFd9xWuXLF/II0y+TVJg8pa8G4Jf1UbNBhGeWMyFShIWzUwdqZtQ3wou8SX8O6nwv6uvMJVIV/xJJnOE/tCFuPhzxilhjrf5fMzHhrXiXWuoKNWTZkam8PY2z9SJSorW8ognjldLjIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772631894; c=relaxed/simple;
	bh=azOy+gm/8HqDcyhScls56xOKxLeLk39/Cj9Hn4ZLAmg=;
	h=To:Subject:From:Message-Id:Date; b=QYRlkzxOK9xI7Ex87M63TAy1omQt6ekSvif1mj44zz16h1pSI5MYeeylwZ2Al67qtgO3xn/bQq7iECYNv6BKwV1Ngm94IpBjUQgfuNI23SZbnRcsrg+bk4gvuXtEazPZKVs/+5TM39r6imEWCoZmv2vR7GX1ql3gAn2eGvbWiJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8fZPv+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8fZPv+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC942C2BC87
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772631893;
	bh=azOy+gm/8HqDcyhScls56xOKxLeLk39/Cj9Hn4ZLAmg=;
	h=To:Subject:From:Date:From;
	b=G8fZPv+vr8xAoNTS+46mL+2m5XfXxXLZC1Gxagm1rCXhxEwcoJkxQdiKTz9xxFeUj
	 vDfdmrtpljWiOdyxINV2vVeWQjpCfb8DNOK9YjvY3WLmTor/s9ADSbOu8u/mUrFV19
	 gpeuBJqi80Nz9bUl2y1DXQ3dS/I39KeejbuQjXD1BW175Ep1BAGaz1LlqPDB1llHXw
	 eKW9P5CIlrSk8a1x8eFK+LU/DTH1S6c3okG+xzNiz3/e7vbBeeDrYP2kdDYKUEIJ0C
	 DIO4I2T/S2wi/4F+KhavM2Xz+kao8QAZ41lrwhNGgjf7zbi5bISA7oFsYP/q4jKedj
	 2aayxV3k9ZQkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5BCBEF8FE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177263189365.28723.17798293321098124711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc57adf0834fa9c54bf458b06de1196327f58f338bb159433a82180892d8021b
Date: Wed, 04 Mar 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772631893
