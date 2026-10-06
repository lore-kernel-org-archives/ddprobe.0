Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEA149D583
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791303634; cv=none; b=MUQBwGmwIcf+J+fR8cp3Dm3Sw5Qt8syYwUKvYkM0UKHdt1GHfhG9NE6kD2ywxGFLzMBEfENOinVjoGqIuHvIF1nv5yP0gE0X6dttZl01Re24BNZBpqqyfW0i5WjQ7eEc44Ht5tbDUhTtjMbihBA0DOZujfZgl1YWLY4+glyNrmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791303634; c=relaxed/simple;
	bh=JmsWtqeKhwtKUKCYPxao5Cb1oNUJQ2P52+/QtOo5FCE=;
	h=To:Subject:From:Message-Id:Date; b=tiDgdUMi9zfFBQLsuI0vGeR6hqBSxnWFZgnqrGAsMrlzpT9lbp6IJN5Xa8D9LTAlg0FUfdDcKj0h/JXADJYjYbLsOgiYlZG6u98k/UNsefYLE8Vgtmia8pWWUtvl77giCoESw+NuN5Yiu4flxQucLSdDMDr0LuEbMrs9ME6aTgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tq21+oI6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tq21+oI6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA7BC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791303633;
	bh=JmsWtqeKhwtKUKCYPxao5Cb1oNUJQ2P52+/QtOo5FCE=;
	h=To:Subject:From:Date:From;
	b=tq21+oI6lrrKOHjPHtWRuZkBKCe4/P9EmXE7CxFPBJ+3PZibNmRsXCMA3eDRJ+VKo
	 RZUF0oeD5kWhFK0Y4kvirY/4ksz7vsHiFNJv1PwgACqQzLZicuUg01Y6v3JpmKp4RI
	 Gb88lrZbQFpEJ41F+LJhQ7o32CoNSXrhd1o2+rBftumNWPgqqs4oNNlb+KS6jY2SNW
	 tZzJYPCLL9o3aCqG62jfbMqMJIQGg9RQ0XPqA52ezzUi527YzxqUKaoBKIL1ZOBujb
	 s08GWBN8ZgzJqfwOYSb7gA0LNYXldHPF/VipqBAzD6toxCxlTP9flL30RfNSrsDp/l
	 SEPD7Q5TLifew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA45DCA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179130363368.16745.16040537034395454004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4a9ec65437649e8f0af14e52b06f5f6c31b612c6fb484b38ab7a9f37fb92866
Date: Tue, 06 Oct 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791303633
