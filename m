Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E8032F60B4
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 02:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761878394; cv=none; b=km7UohbU/zaLpDDhuU2B/iB88FKrSbt0ho+2fFieEQb4HuIV6jy/lCqNdXSmGX7SCe/Sozuy1WCPwox+vcL4jAtCLrBn4ACIMbk25ssgvm4T8TQBMnF5u7CKM+U6oUr5S8LdX1w4f11lyk20vtFhrPcHEdzR3kKHkOO1YgoRSh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761878394; c=relaxed/simple;
	bh=G0dP1vNhyp1J7XEKy/rAnyzAIL+hDHX9C9XQHdeAYNQ=;
	h=To:Subject:From:Message-Id:Date; b=VING2ztXGQha6UAOgTN1Lv9rc/svi8oY9Buv8py7Xjjmk8WKLpOf2ipYSCB7hoQJ9tb2v7uxHceYqvNudfJpD4XpWLbmkUhFbwexHzk0b8cKbCsuwgLMwYw3uqvxA8DCPwR1MkJwXZ4hMSjreIVyTsep2Hgj1o/oGJunCuAZs3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjbHKLuL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjbHKLuL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3387C4CEFD
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761878394;
	bh=G0dP1vNhyp1J7XEKy/rAnyzAIL+hDHX9C9XQHdeAYNQ=;
	h=To:Subject:From:Date:From;
	b=HjbHKLuLX7OwN6YdLJYujEKbRSPKZ59EWw65RJH2f+U67WJCnTTzcjnTargXwUoOE
	 xxoTtkmrgxjsQlIJyW7/VSBu0K3Hf2zJ5YiMYg7yZi/ZoTtsufI3f1An4q86Z/lPL+
	 xjniuiETn2UDJEB1bvYdpMAQ+0YXBZ6Mrk/q3l22iXpHhqOvFeN2fWRlIrne3/XTfw
	 BxP38OY/qkB/qJkrrfZ1tirB0/Uthw1DWqSdZYgMFyE9vIqjoEpT51KC7/WngUOTCo
	 yHx9MwtWUuFCUoBrbYW7goOEUVxNXc1oEamNrtFSBQvRrbNE3n2W50UquAjzFS/oGT
	 XZ+VG8EACOlBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF26BCCF9F0
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176187839380.23807.10192082096905246205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e08ed3a82d49aa793ce11d4d70028fbc08002251adc6a5f854dfb91d31d31ea1
Date: Fri, 31 Oct 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761878393
