Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2700B283FE8
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749647395; cv=none; b=Ld1STuhsOwaJatN/3Z1wUv9nVXo69h3N2HolQQqTYUiw6Abxdb1+wCIPRxhO/ndVSygcZ0QjFlRVYe/40QT6pJr8lRpTMNR6dKT0KAProfAszbOGy5Q0qN3ug9ZjmXX/9nt6m6T6MRj6M/sZguwwClEsZHujb12h0DHNMAdZ88Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749647395; c=relaxed/simple;
	bh=wpaXypqzNhxlWR9WIsMLCRGyfWKitS00F3Ym4bwBVqk=;
	h=To:Subject:From:Message-Id:Date; b=GI1c45YNTmvAOBtmDn0TadHEB+/uv/JPzQ2ArrHV0jF6LlJZ/xDbJtYsQEQScix/SRwpO9WITmHOAFYnUY6oIxK0I2LeP2eMqcvRE3LZF/svkDfgG0Yqfl1MbooqRmxKKE6wMKK1NorGGy4Yziuq7/lUgWx/plohRBOe+/ufhrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dwyXuX1y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dwyXuX1y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DEFC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749647393;
	bh=wpaXypqzNhxlWR9WIsMLCRGyfWKitS00F3Ym4bwBVqk=;
	h=To:Subject:From:Date:From;
	b=dwyXuX1y1+tQ/tnpuGV4tLIfCrGnKgYen4SqUIeD+K6DJ2cSbgJx3QDP0iOwwS/uG
	 ttzzkq4sxdl0bJ/f9CX+JJD/PQvezffiT3KYxrKrw5TjNT+IBfIvxrvDx7i1ROrkmK
	 pWDT84tRhmtG5qqglj7CwocNKqhgNFSDwv245z+p/wisrOcIHwAAcssMTAFSIDuKEr
	 e7GnoWGVj12OlMj80KWspPobZ6Ylu8qk4hH2pqPGW457QsKpTAienxgfLnDCKLmY4j
	 woTEZTO6AgyAxJJTMpZx4BKXn5GHVZKwJQAcY6uyRtJIBJrLVl3GCKUzanuHdMBFHa
	 hEz6bBMzIF45Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFB5C61CE7
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174964739357.22294.4861675004955268302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6aa3e3b904604b37d5f527777622b2fbfbae9a6461e780b1e022e1652e82819
Date: Wed, 11 Jun 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749647393
