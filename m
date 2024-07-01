Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 671EF126F1E
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 15:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719849323; cv=none; b=ZkiPJPqMiUEhaZBZfwowUwDw9FPH7jQq4yMS6nLf74TRA+ferU8xgx9FLyCudfKEl+s6PmbylXkI7xR7OX/NdlbOA0KwTwkGub2B0FfCtcadL6PCkKWfO/GQYsO0GH8EIymPK5XjVeEZaVOe8UBHEMksS2zRm4Lx5DRANsr8Pq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719849323; c=relaxed/simple;
	bh=difF0j+zM2z7WXbZ9WMYwtN3IKgO9VbyHpsCR6kT7C0=;
	h=To:Subject:From:Message-Id:Date; b=JVK7lX6h8Wb4vb0lg2B+PkWv5+nvd7I2Gnr3JFNt8OcBzVD/CBnfgZSLYxBhXop9VKehcUrBIIgejXOTyiFdr6EHgE2rltLFmSTDtyUoY4nkI+m7lbhafY5cksroojUBzrKncucE6EC4rqhPlmfg9vaFSEVS6aTqFrqLb59h4QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+dsaAUb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+dsaAUb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7066C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 15:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719849322;
	bh=difF0j+zM2z7WXbZ9WMYwtN3IKgO9VbyHpsCR6kT7C0=;
	h=To:Subject:From:Date:From;
	b=r+dsaAUbDlf/tPEu0cKeR72kg+XgROJbOuYa4AXBal1TfcEkoE6izlZ4TxLyauljs
	 pMZ3aJuRhI1puJrNeDHRWh/VVC3wmukTA5FhUZv+vmjZ4IEzxr3jItt1dnEVeINnzU
	 v4a42R3buLgtmLG5q2HvTjqRN2sU9zSmm4A2LrXOo+VLeKYOb/Mq9Ko/XQdOk7fqdf
	 w1WdSbzMkqjaPbPh8DEuKNPaV5m4UA0/3wKW4g7S6w0PoC7hLziweFAmSoxXucawS4
	 1OTvgln7ni6dp/B8pXd1wB/EWMw3HdYqhDBuQVHoJ4Pw3s2lOEVpeWEi7VRpMCWKWp
	 /oFDqt4Vaio6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEDA8C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 15:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171984932283.26762.2962980021350151194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb42200cb4da27d56064577adfb97294a759d95ee847253951f0cbd2e901f9ba
Date: Mon, 01 Jul 2024 15:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719849322
