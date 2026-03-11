Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 018BB36BCE8
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773198894; cv=none; b=WVRk3YdFXkjfff3drIXOZ1cyW3KGoofvT3c+UGI77oDea06CGIi+b6WHzthnb8GmTZrA08GTcajCPNuXI3WePQAx1m4+4QTEBQO+1QWdqbq6gboUWBCXLsqUMt7EtK4iYrJaPKBLDZPwokAtmqg3MdenvoYGaBhwEqXddPfpa8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773198894; c=relaxed/simple;
	bh=rdIFBfuT4E3rXUF0nSJiRbS6TMKRcdBMhXgvmBExzlA=;
	h=To:Subject:From:Message-Id:Date; b=IduUhwAAp/1UZyrWcjqI2YsHmiAhPMfmaTSBL1sTVYCKW7Ypq2zFZ8KcD9OtRDmJcmEmAJSyRX3C28rgJPJh8Ue+8hhEj0no6CsTGekQ7L+WjAcfTTBnMpbOKYsDpzpH+ohL35EEhBX/EkIsuKjM+AMC36QWTn0HnOAVZMeqTU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pzWjVz3m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pzWjVz3m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C83C19423
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773198893;
	bh=rdIFBfuT4E3rXUF0nSJiRbS6TMKRcdBMhXgvmBExzlA=;
	h=To:Subject:From:Date:From;
	b=pzWjVz3mQhSxDjpNXeNdKVlJRPNZYPtnP4TGahtDARsk6hwkxWBrQi2S6C0Mof/MM
	 oI+VvCsJh5WsLnUfZ04hSrQc3BmwbHfR6o3lbS9Sr9lu9UPAdBXVnmxCrJTJs4lC7z
	 Oc7g2gcS/smNuH4qqBt1PhHUqTfBOWx8ZBcXGZa19DluJ80Y5Bqrk/0m5nltn7j2b3
	 xZDhAZxju/gGHMDNQNaZCPT1AZP3c6gLK21/jXgb3ppdGEqxP9U0BV4Y++iWDscGBT
	 rrSKWeQtwpms/7Z4A+3gSBlIDLKXP6Z+XvwiWD+q6lefc7ynGHki/b0tYWJJsEVRJh
	 B0KNPV1O4s94g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955ABFD88E4
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177319889360.2503.5362053346788363178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c56adb416b94343ddde20e7fae0b61f5eda8811c0b6f27aa9707f5f6cfcce289
Date: Wed, 11 Mar 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773198893
