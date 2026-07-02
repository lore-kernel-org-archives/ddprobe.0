Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF45533D6
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 02:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782958114; cv=none; b=BV+S/iYxJJ3hiYsAyAryZnac0Om9jfK+v66AW40Wv0yDonZXeMSjsZnE4NoqkM5JOWPz5p14jMvU9fdFk9qKj/lcp0KZYkaXoRbP2YHXK97CU4ESYpCpW6ml0YZQR4wwwB6QdieVCa1HeUCSF56dABkzl0+wTG+Ax8+FcbJm0d4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782958114; c=relaxed/simple;
	bh=27Cz8zQije6jI5qtLntfBL8VqJsQ8OXOuaTFlpSlOy4=;
	h=To:Subject:From:Message-Id:Date; b=VpwB8o3/qegVz4DXk5SsxpXkMelhnxjlDja/bE2v0kLsYLeq7vhDgANwoK3ywBgQFh+tJCsbmQfw1lTZaUXEH6dl/WPWBN19KUr4pjHT/+ljAQJX2Mgc2Q3otgB33H8/5FRwzttBC+Nv3i794ldndMNuJplznAgolVRMBJM8Uvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JHL2VSwV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JHL2VSwV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5CE8C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 02:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782958113;
	bh=27Cz8zQije6jI5qtLntfBL8VqJsQ8OXOuaTFlpSlOy4=;
	h=To:Subject:From:Date:From;
	b=JHL2VSwVZyIwq1LwDr31ww7wuUaDf3glDTXe9WpqZL5HtbHFiMWIGP57mkFSwL5vx
	 Ei4WlcFWyRUIJx+ubuNB3xTZ1HLgrfz0Y+xN6gmwclRe32DF/WO1VuOMnta/jsI7+P
	 aO+BFP0AOAsu0MK2j1PSJ3QC3rPUugq2BgKJovbZ+lAcMVjwnz1RwklHFVj8PPtS63
	 eWDluleBN98sfTtlw4DeYSXuoiuSmFAQnuPsfF3jJWXFWh+Tz5OVERLKYpD+/MP1nz
	 dtpfRskDIu7Pj/oEGls4N7wzYrx1dP6nZ9607hQu+kJjVcO99a3r0rh08IMHBE9ISv
	 xonFrrHfTE/6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDCCC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 02:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178295811368.3988.8187480605916284426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f4b9a99f534a8b0186e15cda792499d732e9bc2a6ac7aa96e48e6311cd1536f
Date: Thu, 02 Jul 2026 02:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782958113
