Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F39B37E2F8
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772712894; cv=none; b=tKptzeYixQepDXJXmICwwclTRGiSP/cCI6jXV+IEtwGOsnj52j1NKCifZhecqin/2r9+75findTJSqeYh/XlRxdapnDsyNc9x1m9gcXULMjpMklKoeoGzjb674SDwonkrj27E9lYG1XxAxj5f4MlWlOHhpFOBYRLT6yR6vmMTek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772712894; c=relaxed/simple;
	bh=tyLh1Maozm25Hqz6VlV7QCF7sylyrBXjqR1TIhb8YvY=;
	h=To:Subject:From:Message-Id:Date; b=iVUvcvNP3KPhTv0fcwIwBT5BIhtXNBP7mO6RW8fLgsPpaiHjPy41DehReejrg7k28S5cZmUyb4WAC4D6izxOhZA8d0fvQQ8DmENFcCiJDJxgEs7B3u2XimNtcdiZaxpLz1N6N6YVze/z5KFHEEK66LkdSt/br+l01iuZ+8jpL+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+pMxoXh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+pMxoXh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B774BC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772712893;
	bh=tyLh1Maozm25Hqz6VlV7QCF7sylyrBXjqR1TIhb8YvY=;
	h=To:Subject:From:Date:From;
	b=m+pMxoXhsRQjWyiiUPiScoCoafTTXMzDykazWxo5zVNT5qWnQbODFNUD/rosJKGrP
	 qRC760UZZwucpn6VWEX3iie4VAP0P8tKLe7MiWUjEyzyIWHSStcYSuLwyAf/gFigaJ
	 D+htrBg8In0DnAf9j3s6zJvJsxcPWRdMmqSlZdurb40DXLrMDZ7SU+aYOCMaTtSRog
	 fxnT6KI+HPLL/ItK8MLKMSDQ5zaalSOiMRaujEJI77kfZq5WSBkUl+nfc7LDvf/m4J
	 tAdTiLjZf47/aEVdNnLnpLNXiQVbaL7JNq5F/Hw4GAPkWYUc0wpe8e2t4RKlM1OnEa
	 mbXNgLrm/T9Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EDCAF30952
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177271289363.10894.14112558053071646898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28875edf518c67bfe74e6652ae003c8e1b47b9dbb6e852f00228319b724346b0
Date: Thu, 05 Mar 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772712893
