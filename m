Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47AFE2609C5
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 09:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784454514; cv=none; b=TLwyP6/ATKX4Te6VGosNxWPdjzNUxA61YBGErdGczcIxLWcfEvAM2XDXtF/CTzXo1uKYks+5M2cqwp+PQvl1MBuMJNZJ2o6IPzirw2MEINzus1dulRB9olgBST7OYLCZMxMs3bdDmN5cn5Gh327+lXhPSzYaMeQ0VOhF1BuKVYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784454514; c=relaxed/simple;
	bh=ezpQKerGBHVRx+NzwtgzkxSRYTBh4MGNNUNOpU78fNI=;
	h=To:Subject:From:Message-Id:Date; b=T6X7xjF8o9cOugEe37wgyx7DDIy7IuZhOt07PWCVxqBeuse1advUF4WeQ5ic03xZzMFWhd7JVss2cVJGy9tifvGBYq/xg6YKDwnZxDp+0wtt+4xmPqqjTocvbd03KUnlNFQe4AI/X/7j4dsTg8WFhQ/+Hz5fy7lWlcsenuxWUvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cPh4taIu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cPh4taIu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1115C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 09:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784454513;
	bh=ezpQKerGBHVRx+NzwtgzkxSRYTBh4MGNNUNOpU78fNI=;
	h=To:Subject:From:Date:From;
	b=cPh4taIuZDBOxjnP8ucppkeWZia3Dx6pXhL5nlTHeIzxOTW6gY4piBaAHLquyrWCl
	 Cy2T9UIkZtTBJ2rfdaT7wqTSuGgH69TM0gC0398B/opjSwysq/wgG0zeY9ytdsLWqp
	 RGe/36bDC4euxOIxjbWUG7nm+D9bQ9SLD0VRaJ35uH2q9aIAVkzYUP8hO1erAUe56q
	 zc/gn6EHPaB/OtKvGyLO+OhQJjr5wY/h4p2mQZWbve7Q4E1DL3hCurrj8m8nmS/mF0
	 BofTcCZXNnGtecGHcrZblRISCKZSlc5HFbffmpV1TmlAmMLx6Xlj0DWdo7q4XFdYf+
	 SrVd3iXRJtM7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC731C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 09:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178445451368.30861.13407941088955762161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cb0939166e25da74bdf678649261caed6c465853d250a4657b4fe6691d9b64b
Date: Sun, 19 Jul 2026 09:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784454513
