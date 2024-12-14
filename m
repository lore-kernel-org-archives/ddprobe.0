Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC3D26AFF
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734194754; cv=none; b=Scl+3zKHsK7WU4HfJN9G2aE080fQF3L4b4msNTqeTJFag53vMb6UTXU03oWczcC/+kZTBNLJ2gkRe0TJqjPANCakVOmR4Pw/Z2kQpACGTG6y8phiBe1pefBeIhGzY6BkKYSCC3r3hEVJJ0t4h/3PICZ3JDsOkQdG0x8EtzOlCmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734194754; c=relaxed/simple;
	bh=YzAdByNDtgK87/cr4VMLIANYjdbgLlSOgdqzOAqK2Dg=;
	h=To:Subject:From:Message-Id:Date; b=c5ThXDgKDn7gQ6ZqqJhas9ByGBfSn5nmnhrn05PtRkxa6sGEaK0aRwfvgAuCY96M/8DEqMegHZKb92EJ4nkdOhq2l1IhQ7zY9U+H19oOSRLtmTTe/sy+noF8Z1UOuVgMWQNbG7h2t/OGr3VlVI+ly6m8vl8NtbAJTC2Nosy2IHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NS6c69Kr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NS6c69Kr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7388C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734194753;
	bh=YzAdByNDtgK87/cr4VMLIANYjdbgLlSOgdqzOAqK2Dg=;
	h=To:Subject:From:Date:From;
	b=NS6c69KrVlw2BK+trj6mtFIoGXPXkms2bH1Vat9qOCHnoDLp4/oTS/Y/V+etsKHdK
	 H3LVe+Zm1XyZiFFL/fKxm94W6HFfie2G5r5gl5f1suU8H3sz8qNuVD1/t6irV9bZxg
	 WJjnWqKx02FBmqbuxwvFpxU4c3F8vHOkik+GU3UGjP0tU47mU47gjNPpqQy7CdI1EN
	 OjIMIAFYAqAcN2o/KykGGgGSWplod5SI10AmDdfivO6D3h3HF6CtTeNAzoTZ0mNHKg
	 REoyzxLstxE+275yf9Y6tu2BXM7QX6DAiLoZlq0/KPZ8mQkAB/ivTK51LmWmt53YUx
	 WXWvNA1YsWBoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E410E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173419475362.2486.16510670737720214406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb423abb5adb8a4fb3a717f8dd3b5a1bc93f2f64ca39ba2e42ee0629966c0769
Date: Sat, 14 Dec 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734194753
