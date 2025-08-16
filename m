Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E66F347C3
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755369594; cv=none; b=nciEp66X79xkajpbfN4njIatJTFQce0YftskFzgQG0EfoUtMbu8yo4Vvq6JJuHGhCYqWSSv5rXDdpw5b9ixrUatmnZ3bsjmAuZUaXJvZmNKsOdefhmhYHAvDBLEqGc+Fkl8i12aga98dLwoPI5vshLjsgaYYo9Cl6zP2KveSRXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755369594; c=relaxed/simple;
	bh=0CtGIU4U87aqf68ZDwRimSyYX64K5LhCcQ/gFaCijso=;
	h=To:Subject:From:Message-Id:Date; b=CBiFM3q0vV+m7UcBNp4/jffQam9kYl4eGHCF7kqHVwoFeKSDDIf2fTPqHk81RDrrs/IbXZAGc3gHxuro3bxo9C3YeXnAeDvhTr6P9tKwFKKrIu1xIfYzhf0jv30OLPK2J3Uz7Gn5/ps+fwAXBiXBmQs4zLxJNq8pJtIq3WBrt60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OjK7H5Aq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OjK7H5Aq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B27C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755369593;
	bh=0CtGIU4U87aqf68ZDwRimSyYX64K5LhCcQ/gFaCijso=;
	h=To:Subject:From:Date:From;
	b=OjK7H5AqMX501B5721fZa3jFD/5OgojiHjNquWQKZ9D8ekBsXQD+MvcuwZqvuBPk3
	 ZoMKSd8M5s1tauiNNDzm5D6y81hQyWtbFQQGUcmxBkuUVaDmeYxsxz9zv0u0A3QBQ9
	 VNacF8eiyY6OV6AhWndUexl8NpsERkpCvNj21ttNrA8bmLEnWwKBIw96MFaI+QuuvO
	 c9IVImsuC0nc8JA8A/aHQDcHVyLi0ddIjx7E7YF34POeqRBEuABEjFfO1UBkYRWOCM
	 9vdsrsSjHZTv7QMFygUcIr0crbvXQhGUkFRKwmpX+ErC9uFefbVJtTHCISR+Dt1q+b
	 y8QuXwJUUvvJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925C4CA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175536959357.12636.9463776242698868177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 659753a996ff1c71b5cc5d3e04f59deeda8f493dcac86220a5207fb391a3776d
Date: Sat, 16 Aug 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755369593
