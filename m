Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF3352E6106
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760618994; cv=none; b=d43e900PtjOvDNOEFKw2CMzWdYepikHgMcm+N7CmHrqqUjpQeX8iHQXbo8LzaVCcyTrpoX9nzIErJ6iOsaGdzVEmUcUmtmoybWLQU3/SGmmvmGuAjBxwW04KfXEftt1gWOPo6XwpyIo56gBB09p3g0LkRVOpzZtVMs7YZR2Qg54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760618994; c=relaxed/simple;
	bh=NAvrqG5VkFS6qsEzZ8Og5zi/886KXfACOWJLmLB+ulc=;
	h=To:Subject:From:Message-Id:Date; b=kM7sNgllfN/wJoorttB1ijobx97TRol7bmAxjQA01x3eQ7GFqK8LAE3W6/ISU+eBwaKZ3s3rgaz0/pgiHDEZhfoyL1WnWSiLP0HGeRnD41ziK9heDTlVWOq7Pl8sWvZhk2+eWMC7FhMHlkpaUkXRzSS8bJJW1HmdTT4o3qIsULw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U7XxitW/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7XxitW/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E391C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760618993;
	bh=NAvrqG5VkFS6qsEzZ8Og5zi/886KXfACOWJLmLB+ulc=;
	h=To:Subject:From:Date:From;
	b=U7XxitW/i0YqP0h27HqQyuqTDzPmAsJClFfKhB182wHbTqAC/8NI6a8mITsDFoDeA
	 HRpDt6urCl9/3vTjPqnVShy6wRCTmTN28yCQzDkWO6QBC1z9jgPjreSbFYfRnqu/PA
	 sa3LP5now5cbMQMc1ShY42hR1fXTtVvNNUkBO/etHiRY2isRc1NdImFf9qXHEFHEOT
	 TCX2TUloD1f9ycZM3kjiJzCjqiVlpF3dVOP+kqUzILJPSA3Dxm+wePqcE3ngVuPNlF
	 9RIfCHw6m6csBFb3bG3wsM72WaAWBSZxkMRnWNLdnc6rQdrCNT19ePtp4HOijOpXpn
	 oYTxWq4dP/jNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF9ECCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176061899357.7858.5555342740867182999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d262f22c56d68acbc89a8e0043d59b7904ac5ba9e074a1fd94a5d8bb41a201ca
Date: Thu, 16 Oct 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760618993
