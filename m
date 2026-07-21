Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48DA836A373
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 13:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784641114; cv=none; b=Zk9hFFXoWMYHjahe7cI8syq6/ABOJF/kGmOSh73g8UOUFsSnrVZr6JB0VREH6LNPiQwodd2KsKn5UxsqE/2uALcI/XM4ClGgWAvGMoyoMYOB/DxoQZaDftvnD47YSlZxRtXJgZT6n5ANn/Zz/RtHVT/CKkq7FLh4Iu7JVvRcXdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784641114; c=relaxed/simple;
	bh=sCI7RDD+qpQgK052BO4zLXJZ9gkFMaAmxEudVJBwzRo=;
	h=To:Subject:From:Message-Id:Date; b=KnzH5zeehj7Vs1+aKKWkzjvkzpJLUa/u9V/m74ZRdjYd14uxYE2Bq6njivWdMrDS7lLqm7optlvkSlByom2pagCtIxYks8+9FIRsWqLWWnYD1c6/4Cx++jRtZfZ7SulMqhZLkYVIojYj4GModmAr0ilqUjpdMg2VE7G0he6uWhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Isnz2EEf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Isnz2EEf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD232C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 13:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784641113;
	bh=sCI7RDD+qpQgK052BO4zLXJZ9gkFMaAmxEudVJBwzRo=;
	h=To:Subject:From:Date:From;
	b=Isnz2EEf/HCQNggyvcQDT39OxqGQN3/RU0danbwCnJ8VxjYGFPLa52AskmL35HSv6
	 WmS8yO+J7uhRsYHGs/1eftzX1iIWXJWa5/U/B3q+89O1oa9y9Yueg5+63t84serhAH
	 /cauYHfMiHZukUtkKy2W/pPQ0uGx4bejHN0DrlatWVjuv3WeZo1lqc2pespkbp/vi/
	 3xr1D9iH5q6Omkony8YiJ6oHmGdcRmsNgxImY9a5/bt/2v9jxNwnGgVhZRBZA6Yc7i
	 PIBxUqCUS7whaOz0HA9a36wuzyOGGOpauk/G+wR77Do2rGMu2gEFJp00Ux+zDTmy0D
	 qQA5G1bJkqWgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA91EC44532
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 13:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178464111368.27085.13054719190129975114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d2f1b648341d77f4825f13ca4eb982ec83fb3044067385ea6ab964585e93166
Date: Tue, 21 Jul 2026 13:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784641113
