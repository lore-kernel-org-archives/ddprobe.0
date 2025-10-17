Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18FE01B3937
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760693394; cv=none; b=jTkjh626uQ8yeGlHTccQJ1QOk122SbZ4JE2l7DSBtyrNUWz7WO9+Cb7y594M8us/fiLpOiugP9Y08Nqu0k88XAo92IGRF7COcjPZeSC0ykUG8hitmM+ev7C6NCa1XOITm/0Ij8+AaKN9vB2mL3H+n5mLRo9pYvs3MxxQUeJU8NM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760693394; c=relaxed/simple;
	bh=pVUgifKBfmi59pPZ3h5dbo9nnXddwV0kOwd98U5nrVA=;
	h=To:Subject:From:Message-Id:Date; b=TTrUEqm3OOOohM+5M982xuoXdX2wCtPa4tkcPT2GhnX3KTeDmJVc6ia7cFaJ5WkA35/ihc3j4mvOFMqa4WIeECHOkO8UFgsjgHzXFsO8dHgPEYQi78IwKJYLc5E3WP3DTO2Z8w2X64gg1sHIUdqMbZ+ueyCHd3Pkz2Isw++Bm+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UcWWIufh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UcWWIufh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5114C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760693393;
	bh=pVUgifKBfmi59pPZ3h5dbo9nnXddwV0kOwd98U5nrVA=;
	h=To:Subject:From:Date:From;
	b=UcWWIufhEaruHNGDEx5YvX8XCQH19iCyU3K5Y4DXBxe7umvQ2cnkwN8gTEQRIDAD1
	 QVOavt2uWyTH7WfkZl76AfeTzuVqAOxnEhjA9C712UPH12QcOsZe7SFcpo3aucBIKE
	 so8pYy+MghaKKsTfn1zp0/bF8OnRNoLI1cAtrkBsfiHIvQDDbsTCUgSbPyO4Ep2JhB
	 3BnCXH0tCPhfolvQlE6WRk4r02sOsCT3iv8phBjiGwBXZik17Yiv+Ch5e7tR4zOkAH
	 dedBkYhVfrY6Fulf/ilVQVSsxZ5Ocar5wIMuBnn8c3xnnQpTJkwlUTE5qjvKhfjBwi
	 EbuaX1y9j33Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CF7CCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176069339357.729.13464571665621797258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee0292e7ce9cfe4b0b1214f2ffdf3862d7dfa0e4fe304e7ce727eee3b3c5464a
Date: Fri, 17 Oct 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760693393
