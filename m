Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5245918C22
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 15:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718723363; cv=none; b=Z+JQD+fEp6L44LDhbhqoDb1wMCekAS2oYJIvdL6+H/qXQcdV2eWWR6QSKSc0+5VfhlG9UFX/h2jJdtkK+hgF0Fg9Hvd0oKdTC9+x6hGqzuVqcom3nVJds5SvnSzFhWfrypDU671cVLWoIyLdjGDsQg7PlEg99tRbOmxcDXWSOME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718723363; c=relaxed/simple;
	bh=Fv4gwUuqv/g9/CZ/l5L8m1EHdE52dJyghBZJM5ryMgc=;
	h=To:Subject:From:Message-Id:Date; b=PFDJeDfnA3ijIf8hIxykUAHOANA5HpD3AQeiOg3cAY7Z0xQzLyeHjpGYrhmJcW+hibfwCuTJ+AvvydjzDC6yaMo0GUw2gaNSwOURtMuJmPKgUx54OO0sSJ4fpPtQQdSNtshLkhBQNZ/KE2+Cz8YI+QFALZE5SdMSfxExLjtMnsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vER0oFs4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vER0oFs4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD493C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 15:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718723362;
	bh=Fv4gwUuqv/g9/CZ/l5L8m1EHdE52dJyghBZJM5ryMgc=;
	h=To:Subject:From:Date:From;
	b=vER0oFs4gn9Z53+rmstUl6xy/ZdZt0TM8wtBDiVCyid7Q4PORYSCaatKJCbk6mjyw
	 fcMMXBu9YwB/MUI95LhWUXQJSOf6MVpMIlDl7WMtuPHx0lBNCLFLU1PFZUhSFNX//R
	 sLpkCeFM8udb/Cwn1ZU53tj7QFlPnrikaOTyHOZx2+KAzXWaiEb6Z8KANGtVhuUYAG
	 WT6fdu0ekD8PtdkvJ/UdlbkNhD7055ua4NI2AFN6Om5stqAQ2mVBSycHslXdb8eU51
	 dCMG3D0On0R5ph7NXFc+dP5H+kRWZEcVf01yY2Ac9AyXoswgcCAHtn5smXR+IXxmL9
	 NOMNALWg5OT7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF96C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 15:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171872336276.8976.5309343939251456266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9eef5d155b204bdce066582a3bd884324648b400e6b5bf0ef65eaba4a70fecb
Date: Tue, 18 Jun 2024 15:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718723362
