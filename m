Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DAE938886F
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 21:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781643994; cv=none; b=D2dwxtEUMvzRW0AB2ANd7vOssuVQHE5j4SedWkbXTPf5F2spSSrECH65sr1Kg3WXlfKbpNzqXwftxllLp0otySoed+aS+gPmh3BgYA5OzA3a/MTbcEsVQGk1vOjBpWC5LlI9KewQlsh/dKr78KiKPENMQTkp1gZH9GhZaRccvGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781643994; c=relaxed/simple;
	bh=fWO67Yv+yLPtDKeQiYvIGRqzdtCSlEv4mBEZk6Ki1nA=;
	h=To:Subject:From:Message-Id:Date; b=XIf7/sb9/aGW6QI1rMx5+A4TMKn2vtlp4A2wqMR8R79FnzdfcxOo6zZviOvL45WQHcxDDHuOBxk1yrnuboZ6c5gs4KEykg5MhIzTvLTWUhP87nEly6WUNMtJ8qIlLa9XHKrlC4iRVcAj7Oz3hnXylsFR9+2leof5UM11reK3niA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYPmRmuq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYPmRmuq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4FFAC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 21:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781643993;
	bh=fWO67Yv+yLPtDKeQiYvIGRqzdtCSlEv4mBEZk6Ki1nA=;
	h=To:Subject:From:Date:From;
	b=EYPmRmuq/vfZcMJs3bUo5sS8rkwa4jGyf6jqkjOKgltRwuK+8tQ/ZBgZ7BXMqFEt2
	 4CwmfVZYd1c13lZhGW7poaJ0DhORH0KCDp1xxu6QRbPHNXXQ678esTNoB8w5ONTPP8
	 7NMm718blMfPArCdAvg+zrc7JXiF6MxaBD1GVImVnJVETX8pmi2D09SsCYRMinHzEz
	 lZpym+mDBL8/Nnu0IeCFUFv1CIwhKFGNOiHbsXgDqk2GQbiWVEcPKrC4I+ILW8gO+a
	 M7wo6fbaGSS1aV5TOvtuHz/uUVuQ5Be4Z+NlGTvlDEPWGWS8ZylQwCV+K/DprnoSYp
	 2cNgHapwPZRuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE4F3CD98E6
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 21:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178164399375.13010.2068234746450519259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b3ac740ca1040eff062fa370a50b56a49ec53cd6c1b1f7989dabf77e07ffe8c
Date: Tue, 16 Jun 2026 21:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781643993
