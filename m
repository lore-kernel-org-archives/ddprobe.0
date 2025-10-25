Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318C01DF73A
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761425994; cv=none; b=QdbiaMRwoFQS92DxMxLwCu+KEE22z9oQGZ6z2rmNy8GVxYMajF8+JplNWrrzXzBTumGX7/wNgHpXu6v/0ZpEcd6hcz/5rFaXpCofQkH3ZYVhLBxYd1C8JKOpdbpI9biIQlU/SapnaZvoGFefG6vLWMB3pptFtkTUSKas2fWYCbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761425994; c=relaxed/simple;
	bh=hsPuTazDvtiSC8rFSHcIk/s+vHIvhpfccl4kCtaN2Rk=;
	h=To:Subject:From:Message-Id:Date; b=LyDHf5u/nOFUVJVR3csPIjaQbCRDWK1ShEg5+xiyUntautlW9lppD9gPKCHyHKi40mbJjHORkjnz6QIgaaTmx9uvN2vQtxtlrLiwBZEDCa8WIg5fqF5ZjWnQUVVi/kWiz2HwYR3Wck1+TVsg2/vLtYMFeF6ZISIb5q34EJDlIqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l952c1DG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l952c1DG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3134C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761425993;
	bh=hsPuTazDvtiSC8rFSHcIk/s+vHIvhpfccl4kCtaN2Rk=;
	h=To:Subject:From:Date:From;
	b=l952c1DG680HQhCsU3Gn940TKCBLUxDo8fBRkdLYpOOGRGh6OLSo1G/7mjvDqqEJd
	 oGDnIbyBPqElLy+fQNB/gYFohfdRzCV6+Fx2hC9yob4O+wa+aAt/3XeKwKeI8XKT9u
	 88iJ3rLD8EAo4dbLUwlaOnOM4flIIr/oPLfZsPxB43p3cJ1Utz0/G9dxwD0KZW/x6P
	 VN8bRY/7fFCFZ03jgJEPeNYPCUeP/2MnG8O35Y1u8oxe6TRU56rwvemFy8BzE7ji0z
	 I8uGTdF/Z3Rj8s+MNMT5DZpJYclquJhwcm+h2chr0O8A4sccFH835CVy2BOa8S9xOJ
	 jSkO5I4NOUa0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE06CCF9E5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176142599358.16871.12316883846176128604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f32184584aa69c0153c298aa041d1af52a9a18f6c99e8de440172f36d4407198
Date: Sat, 25 Oct 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761425993
