Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EAC928CF5F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785568834; cv=none; b=b/RH+Fx9inaSjpUANbyzZp+RKJq8sI6E0eCFad1IJnO4gO53DZRy+VqySILk9ZZ744jyCItZCQ+6syGg3Sj53ZewW7UADXwxP7UmCK1oJLnGFNhrQX7Lhrdhxfs6S/nkia8BcKVsaEgi91KdMwDBMv6AyWLTwB/H5Qa+uXFWwSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785568834; c=relaxed/simple;
	bh=MH0+jo+P0cgeRvF3fVFztjN3ayXlhO/MPa2qcVRo8Vg=;
	h=To:Subject:From:Message-Id:Date; b=slhNtJSBkF1BJl6KH5dmLTbjXR/gQHDDD0mI4HOwBCOaIfNGY1po9j9kzB++Y3a2fICOj6lCo3Pj3dLxHfWhV1VwjJYAulOr+eJ6rsZkUAJ470GYyxg/eGutWjz82bX3d8PUh9ZaCXpNTtFYfGg2O67QpO7IRdJWu428/RYqiUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FOEVsM2M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FOEVsM2M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D52C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785568833;
	bh=MH0+jo+P0cgeRvF3fVFztjN3ayXlhO/MPa2qcVRo8Vg=;
	h=To:Subject:From:Date:From;
	b=FOEVsM2MRaBZ2bmJk1aeExHop/BeeldcMiDT1xiVE8kYEzzWo8qI4srDfPmQhxr0Y
	 5IZ/5CO4WHzzK8HYR8/igY4s0M4QBkEjOILn9JhNOXxfE1y73IowuVuSE/URvKXHlE
	 CsqjQWwRb0Spmby4/21NK5gn9y2/jBLIW763ZtLgjXoPUYlgkkZUkr6cXbu99a8+w+
	 LMPPhl6cMAbrHAQBoATJfYbltTmZQvGfkJoOyqsE+LtMU29eK9yvFPkqXDcyex+aLW
	 D9JMdnywI/1hmHtkEsGdj2xPu2cMUmHHMBktkniYhbTZShKL7jhS5hlpiLNfQr0I+O
	 UmA3e2K42a2Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE9DC5516F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178556883369.22940.6566271231396571859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3d632a2a7e7fcd3fa65a939f83ed970b08bd9b99ed74bfebf2f835bc0da74ce
Date: Sat, 01 Aug 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785568833
