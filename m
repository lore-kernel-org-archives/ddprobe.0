Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248A68F58
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754099394; cv=none; b=DzjU/AYTBRsZH8T33oJC92uhzNVMS6TMaAkmQbf9C6xB/TP9BuKZE+fqlfYw7/W/KG0akWH8fJUr0yA/FyM2o6z1TX8mSTIZYtZciVzYNDjVREFoIjy8siK1CcxvtveEJTONwqLgxz0VMn5I9lvz/juoy3cFndhVxnfh4K4u+cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754099394; c=relaxed/simple;
	bh=N5zszAsEXQ4uY1p2eJcJ5Tvu5KsjgM7Wb91lAKiKhmY=;
	h=To:Subject:From:Message-Id:Date; b=T6+loqOEqvPI4f+BzRcdxTSkbsoKEHwo3uufXQh9goQZ1GbiKeeEcPdPJ8gXXnBjYDuaz91M0CjC3cxoiz7aoV/j4LMvSr3WVE/cYtD8D21k8ngtMYtB2XH10umShMSL856OF22tltVr4ihDVZ79WP+Z22kpbUEaJ/KF+oOFiVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ia5tRVDG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ia5tRVDG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B1FC4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754099393;
	bh=N5zszAsEXQ4uY1p2eJcJ5Tvu5KsjgM7Wb91lAKiKhmY=;
	h=To:Subject:From:Date:From;
	b=ia5tRVDGwjI/HK1uwh2emCP2d2J4r5/hXmX86D1pJH97CDqELfGX9mGZ9tXlHJksn
	 9T5SR9vzbOWU+OCeB8vR+AGy9Xsj4VLedlsYk7CMhq12FbpsEgM3ixvY17eli1xvia
	 365np8XtJfMck5oeTZ8d+XyFLb3puBFEh7E6K4EhBo/LEbY7wvFZwzoE2PWc37yuAT
	 o9vHP+Ifbl6w5RFzgaAOCw4N/F+gUAMcqzc1693FTlSCFoWwhBiH0ZNUAYRKOB70ue
	 oL2XtNv3uJe/bpseDr9cGJPL9j0B/dF28/RooRsE+1KmXaJ7mXgCyNk3JDerFPSLa9
	 NwCE5YnyRSc2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FAEC87FCA
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175409939358.23081.15705464870853521602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8bf1681fe3f07068b2e28ac557e5863dbed1ad568942e575306f5f2f192bba0
Date: Sat, 02 Aug 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754099393
