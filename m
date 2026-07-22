Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD1F1DED5C
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 10:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784717314; cv=none; b=PlrmYoB1cMlyAW56gqfJ6qGz3ZWqaXQ9sHJvffhkNHJRdi+aFHn3gEgjhU/as5Hvw3RfbqM10qjB+AF0iYtva1xZPbMZD5c17FCTCKUG6/MinejD4kYHeADeJ8oPq4qpBOy7fAf9odnS9/rk/NMilhcbcE+gmoQlXvFMGoHr6zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784717314; c=relaxed/simple;
	bh=DYbCBRvRg1LG9wbC/UAJEs38IqtiUidcYDbbvHPJ5dI=;
	h=To:Subject:From:Message-Id:Date; b=Mv/zDRAFfnpwrRjNFksZg+NqFJ1o1NJhXmn8jpOiB9oFgrFMg+MJ+1rVfuQ2eX+upBmpKY1hoC0moDegJkH3nkytAxoKWwN2LhpO9mZJeBeY6tk9zCC4aMus6ZSXWJciM9Fz/Au2dlyqZ1y2dzPxX0ACm+6IrvHoApf+dEDIX3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcthpI7e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcthpI7e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D441DC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 10:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784717313;
	bh=DYbCBRvRg1LG9wbC/UAJEs38IqtiUidcYDbbvHPJ5dI=;
	h=To:Subject:From:Date:From;
	b=YcthpI7eGxElZZR5sRGHQLOHjyjl20z4b1tRcIbOYN4cuzNDiOjwKVg79AH9I0jJx
	 03Pt3rvo/tolPJ4EQx6gmawW6myH7Pp1hhGD7hrcNHLhNs4wJTAAx/3Kiyk36tDFa/
	 PApXna2a+xUP8Z3olVVXXJ3BVuQtz0O6PyhRFvUMUffQkCyAz3LcEVrJ5Y7ybWQWjb
	 V8C9IEJ17iqgQFcIAWe50CK2rSvmKBbc8eLLDvGro/7YLam8VIPjfluWeow4+qgdMM
	 Ji9WvWaqplc46ZSs8vmvp5DAlvNzgnX/ncfy4ytWUuloobVDNe8efzSkhbQCjD5N6Z
	 CXGUVuddrZEDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE38CC44532
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 10:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178471731370.22599.5803579910913750955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7667bcf75ef6dba32ed0e350555db73952b4ebf9c1eb4597a67cdfa2b3e9df40
Date: Wed, 22 Jul 2026 10:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784717313
