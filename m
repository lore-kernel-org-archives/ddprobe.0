Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180EB2F3600
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773986094; cv=none; b=OWYkCmj+zAbwm+VUpw1ptE1OWTeo0Lhl5vVWEvXOLyusBj36cLKbIzcuAPbDOsfTFsjvjA/42o/Kg/uFfM2iSKrzRCOd+85Ycz8N5p3O360spQU4YrhqmQozuP0Jvpc9SmZiALlamZPu5fhSD+atj+gF94sKVI9C0ovE5Yvzewg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773986094; c=relaxed/simple;
	bh=1dTxnERWEwAjaYf5Nmnxm+fanHwnMSl7v+Za049gLv0=;
	h=To:Subject:From:Message-Id:Date; b=CjRrpeoCRKDazhZNemKaEeiaEYwv81cNahMXNpd55TlTkePoMIBT99ynnFaNx4HgRv01AUfm9m3WcCIYZgTzUXRcg3petZsbo24srsDx82QTU53vDaZ6FwpHule1QKSuxL6QGoleyRQ/skXpFmB51Y7p9j28wkVV2i0e8MwwNh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A9Y9/ZKh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A9Y9/ZKh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA798C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773986093;
	bh=1dTxnERWEwAjaYf5Nmnxm+fanHwnMSl7v+Za049gLv0=;
	h=To:Subject:From:Date:From;
	b=A9Y9/ZKhg+LHkoKBYnWZNpD1QbYVHnjL2xVjGqU35AlEBOes8wD6Qnd/UAfXls94a
	 scDip7uFiu8LVx3mDVc9bOq/e5Ydjy77wQNDeBaWJcylK6xqK3agZTEhSmdaxgoPp8
	 Muxcnz3XidvfkmUiLqesZZsNJk0PrsQJ1PrPet2po110yStAmk9oBv2RIj95tcqiAl
	 Pj4AtxAUeCisvSxampRsRwG3A+6l7wnA1j6no8OL3/21qvueJEn8SeciX10+3p9GbQ
	 qUwhL5zbU87u6eh87qQvZWsFj2nYP/l5FbNRm/mM/EU6hmMHu5nqJfHSQbkSRA9olV
	 osiieD38I7xUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978FD1093179
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177398609361.15454.7546933360196279505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32957d5b5aab1be2af750e0772895a891f0bd6a69655ea98ae77e9a711c4b827
Date: Fri, 20 Mar 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773986093
