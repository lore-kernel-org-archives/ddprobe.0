Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE8E1AAC9
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736398554; cv=none; b=U5PxJr2MeBQTOYRREvyb2IC1CQD4jYOP3r3WzqLovd1P+w4OS8V9+i48rl0hVM94vt6DxHc50jCXL7NhW5/KpQzM+gvAm+eIXyJbucRdw7JBYlIw9E/PN9FxBVCvIinlXErQDrUA+mJKYd8bWyl00z3As07lYjYWfGGJ+PM368I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736398554; c=relaxed/simple;
	bh=ubAtdOIYPvrxWdDbdt7lHhD4qvGisTtSY1YS3JfLHjQ=;
	h=To:Subject:From:Message-Id:Date; b=CLUeEbg/JtPmmi9H7PJBLgi4kg1orOKvr3WXxu9znVSHViEtUQ7ET7wU0Ken3ZE/0gyfhY2cV221ZFXIoMJvjbGkxJ+hI06XYbc43Q1MOTUunYQZwEi5YSKL+b44MBEU3D5a2DMkAtbPt1nHw7FtwXm6AhQbZzy4CbumnvKsKqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMgwqqPz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMgwqqPz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AA8C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736398553;
	bh=ubAtdOIYPvrxWdDbdt7lHhD4qvGisTtSY1YS3JfLHjQ=;
	h=To:Subject:From:Date:From;
	b=KMgwqqPzdSRwf2pUWo5ghMUmGqAxDjTI4LDOVWshYwiWevBiHvRNYutHZT0CZcBT8
	 Tspo0pc3RxXApyjL3mSAmNa7BHsEFscvZa8IGmuNdSuIveoNMIbLU16FSYBCsCCvOh
	 rbh6pz5RFC6HRG5rPXsMJOli839tH5geALFknZD7uInHQv5ToHi6GSEKLfGpJBQUeu
	 x9FFwwVMprYMWfLejGZAUoEMi2xsbJKj3URA+6jIfAMUFG9BgazaUhfuU4wb0UHH+e
	 hiRQLVj/cNKvu0lGY7bZ1dsXT0qTPkKoDPSeGPE43DgOkNAvZEG+UqAME79ViCe6FQ
	 iuA7NKZsGkMYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9599BE77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173639855360.6300.4244080564318163359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaa351685311d19f7eda00003b3e0f9d9220775b6b56db6398da3defcd75aea6
Date: Thu, 09 Jan 2025 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736398553
