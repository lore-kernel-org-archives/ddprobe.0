Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1934D17E4
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 06:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763794314; cv=none; b=VD4781BXvLI+nS686+o8LhRjNcQOJW9+Y2iBe+fXDCCDHmuOU+SZoI/E7UTD2QpiDi6BB0qeRzKOJWRGTy+NClKCk+5EipAH4SKvnCQqs465IhRC46dSQVgtawCafJRnxP6lyeGF6E7sjkN75c+ZqYO32hVc0a+HPRNwugyTejo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763794314; c=relaxed/simple;
	bh=3T4AIb6WDS13Bh5Qsp/NQEvNYUUWL8Ay17aeDw8KYo0=;
	h=To:Subject:From:Message-Id:Date; b=D+XN0Y8soVjhXiAjTliOkrFvgGk8L92GB1DwRihlQmK2/2oognWl5bM/EvaODiJiXvThnI4z40rIySOvZREwMLXizdQ50aoNqF1A1sfzC+hjtVzIWkhHVxRP4NusAjX8tCiISaK+eX5CC7U1I/SaElaXiPYZHd3Hl7qZ7/rwvkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J8+vz18o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J8+vz18o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB979C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 06:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763794313;
	bh=3T4AIb6WDS13Bh5Qsp/NQEvNYUUWL8Ay17aeDw8KYo0=;
	h=To:Subject:From:Date:From;
	b=J8+vz18oSRN45ZQjalxY9gkluXCmfkKz2YciLXBVi6fwftb76QRObEmCJrouU6+jS
	 gSlyCt6s7hVG4+cFURdF9mMjWm2wlgOjeRMdz5twKArLG26JVDRqU4YddLM/hCyY4o
	 mxw3VFLADQkQBpyLEogl3STnQ7URUPznjgUzVbIH8S/7bs//XeiWuLw/Fpub4BkyYY
	 k6kiPqo5MXAh5UswzipSb5AYLSzUnfEqw12WKeKIdhGkXRsHjxayt2GqNykxEMwaZp
	 DWVbPhbBvYfgWQ9jBcMdidLkIJpGTfuJ+E1RBHtnWJ1M11oCZn2hLhcRzZCVDhDom+
	 u3eNQXy3qpynQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9533BCFC51D
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 06:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176379431358.32164.15700875549669269652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a2837a534ead221ffaaf340b1bf5ccad841300f83fca2a02784b4f2b5337b36
Date: Sat, 22 Nov 2025 06:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763794313
